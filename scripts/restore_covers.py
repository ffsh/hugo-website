#!/usr/bin/env python3
import os
import re
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
XML = ROOT / 'freifunksdholstein.WordPress.2026-09-27.xml'
POSTS_DIR = ROOT / 'content' / 'posts'
STATIC_COVERS = ROOT / 'static' / 'covers'

ns = {
    'content': 'http://purl.org/rss/1.0/modules/content/',
    'excerpt': 'http://wordpress.org/export/1.2/excerpt/',
    'wfw': 'http://wellformedweb.org/CommentAPI/',
    'dc': 'http://purl.org/dc/elements/1.1/',
    'wp': 'http://wordpress.org/export/1.2/',
}


def read_wp_exports():
    tree = ET.parse(XML)
    root = tree.getroot()
    attachments = {}
    for item in root.findall('./channel/item'):
        post_type = item.find('wp:post_type', ns)
        if post_type is None or post_type.text != 'attachment':
            continue
        meta = {}
        for m in item.findall('wp:postmeta', ns):
            key = m.find('wp:meta_key', ns)
            val = m.find('wp:meta_value', ns)
            if key is not None and val is not None:
                meta[key.text] = val.text
        attached_file = meta.get('_wp_attached_file')
        if attached_file:
            attachments[item.findtext('wp:post_id', namespaces=ns)] = attached_file

    posts = []
    for item in root.findall('./channel/item'):
        post_type = item.find('wp:post_type', ns)
        if post_type is None or post_type.text != 'post':
            continue
        title = item.findtext('title') or ''
        link = item.findtext('link') or ''
        meta = {}
        for m in item.findall('wp:postmeta', ns):
            key = m.find('wp:meta_key', ns)
            val = m.find('wp:meta_value', ns)
            if key is not None and val is not None:
                meta[key.text] = val.text
        thumb = meta.get('_thumbnail_id')
        if thumb:
            attachment_file = attachments.get(str(thumb), attachments.get(thumb))
            if attachment_file:
                posts.append({
                    'title': title,
                    'link': link,
                    'file': attachment_file,
                })
    return posts


def normalize_slug(title: str) -> str:
    s = title.strip().lower()
    s = re.sub(r'[^a-z0-9]+', '-', s)
    s = re.sub(r'-+', '-', s).strip('-')
    return s or 'post'


def main():
    posts = read_wp_exports()
    for post in posts:
        target = None
        for path in POSTS_DIR.rglob('*.md'):
            text = path.read_text(encoding='utf-8', errors='ignore')
            if f'title: {post["title"]}' in text or f'title: "{post["title"]}"' in text:
                target = path
                break
        if target is None:
            # try by URL slug from link
            slug = post['link'].rstrip('/').split('/')[-1]
            candidates = list(POSTS_DIR.rglob(f'*{slug}*.md'))
            if candidates:
                target = candidates[0]
        if target is None:
            continue

        if 'cover:' not in target.read_text(encoding='utf-8', errors='ignore'):
            filename = Path(post['file']).name
            src = ROOT / 'static' / 'wp-content' / 'uploads' / post['file']
            if not src.exists():
                # keep the fallback path in the same tree if found elsewhere
                alt = list(ROOT.glob(f'**/{filename}'))
                if alt:
                    src = alt[0]
            if not src.exists():
                continue

            dst = STATIC_COVERS / filename
            dst.parent.mkdir(parents=True, exist_ok=True)
            if not dst.exists():
                os.link(src, dst)

            text = target.read_text(encoding='utf-8', errors='ignore')
            if text.startswith('---\n'):
                header, body = text.split('---\n', 2)[1], text.split('---\n', 2)[2]
                # preserve only body after second separator
                text = '---\n' + header + '\ncover:\n  image: /covers/' + filename + '\n  alt: "' + post['title'] + '"\n---\n' + body
                target.write_text(text, encoding='utf-8')
            else:
                target.write_text('---\ncover:\n  image: /covers/' + filename + '\n  alt: "' + post['title'] + '"\n---\n' + text, encoding='utf-8')

    print(f'processed {len(posts)} posts')


if __name__ == '__main__':
    main()
