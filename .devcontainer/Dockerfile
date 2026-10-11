FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git-lfs \
        make \
        curl \
        jq \
        ca-certificates \
        python3 \
        python3-pip \
        nodejs \
        npm \   
    && rm -rf /var/lib/apt/lists/*

RUN npx playwright install-deps chromium
