FROM mcr.microsoft.com/devcontainers/base:debian

RUN <<EOF
    set -e
    export DEBIAN_FRONTEND=noninteractive
    apt-get update -y
    apt-get dist-upgrade -y

    # build-essential: C / C++
    # cargo: Rust
    # command-not-found: so LLMs will notice missing commands can be installed
    # ed: in case the coding harness’s file editing tools fails
    # golang-go: Go
    # mupdf-tools, poppler-utils: PDF
    # python-is-python3 python3-pip: Python
    # ripgrep: LLM’s preferred grep
    # vim-nox: replace Vi with the full Vim
    apt-get install -y build-essential cargo command-not-found ed golang-go mupdf-tools poppler-utils python-is-python3 python3-pip ripgrep vim-nox

    apt-get purge -y vim-tiny
    apt-file update
    apt-get autoremove -y --purge
    apt-get clean -y
    rm -rf /var/lib/apt/lists/*

    # deno: JavaScript / TypeScript
    curl -fsSL https://deno.land/install.sh | CI=1 DENO_INSTALL=/usr/local sh
EOF
