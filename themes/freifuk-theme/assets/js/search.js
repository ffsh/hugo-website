document.addEventListener('DOMContentLoaded', function () {
  const translations = window.siteTranslations || {};
  const searchInput = document.getElementById('searchInput');
  const searchResults = document.getElementById('searchResults');

  if (!searchInput || !searchResults) {
    return;
  }

  const formatDate = (value) => {
    if (!value) return '';
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) return value;
    return date.toLocaleDateString('de-DE', { day: '2-digit', month: '2-digit', year: 'numeric' });
  };

  const filterItems = (query) => {
    if (!query) {
      return allItems.slice(0, 8);
    }

    return allItems.filter((item) => {
      const haystack = [
        item.title,
        item.summary,
        item.content,
        item.permalink,
        item.section,
        ...(item.tags || [])
      ].join(' ').toLowerCase();
      return haystack.includes(query);
    }).slice(0, 20);
  };

  const renderResults = (items) => {
    if (!items.length) {
      searchResults.innerHTML = '<li class="search-empty">' + (translations.searchEmpty || 'No matching entries found.') + '</li>';
      return;
    }

    searchResults.innerHTML = items.map((item) => {
      const summary = (item.summary || '').replace(/<[^>]+>/g, ' ').replace(/\s+/g, ' ').trim();
      return `
        <li class="search-result-item">
          <a href="${item.permalink}">
            <div class="search-result-meta">${formatDate(item.date || item.publishdate || '')}</div>
            <strong>${item.title || (translations.searchEntryFallback || 'Entry')}</strong>
            <p>${summary ? summary.slice(0, 180) : (translations.searchNoDescription || 'No description available.')}</p>
          </a>
        </li>
      `;
    }).join('');
  };

  const fetchIndex = async () => {
    try {
      const response = await fetch('/index.json');
      if (!response.ok) {
        throw new Error('Search index not available');
      }
      const data = await response.json();
      return data;
    } catch (error) {
      searchResults.innerHTML = '<li class="search-empty">' + (translations.searchUnavailable || 'Search is currently unavailable.') + '</li>';
      return [];
    }
  };

  let allItems = [];
  const params = new URLSearchParams(window.location.search);
  const initialQuery = (params.get('q') || '').trim().toLowerCase();

  const applyQuery = (query) => {
    searchInput.value = query;
    renderResults(filterItems(query));
  };

  fetchIndex().then((data) => {
    allItems = Array.isArray(data) ? data : [];
    searchInput.disabled = false;
    searchInput.setAttribute('placeholder', translations.searchPlaceholder || 'Search...');

    if (initialQuery) {
      applyQuery(initialQuery);
      return;
    }

    renderResults(allItems.slice(0, 8));
  });

  searchInput.addEventListener('input', (event) => {
    const query = (event.target.value || '').trim().toLowerCase();
    renderResults(filterItems(query));
  });
});
