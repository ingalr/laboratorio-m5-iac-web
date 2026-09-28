# syntax=docker/dockerfile:1

FROM ghcr.io/opentofu/opentofu:1.12.6-minimal AS opentofu

FROM mcr.microsoft.com/devcontainers/base:noble

COPY --from=opentofu /usr/local/bin/tofu /usr/local/bin/tofu

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        diffutils \
        git \
        jq \
        less \
        ripgrep \
        unzip \
    && rm -rf /var/lib/apt/lists/*
