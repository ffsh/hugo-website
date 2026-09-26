FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git-lfs \
        make \
        curl \
        jq \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*
