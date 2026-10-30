FROM mcr.microsoft.com/devcontainers/base:debian

RUN <<EOF
    set -e
    export DEBIAN_FRONTEND=noninteractive
    apt-get update -y
    apt-get dist-upgrade -y

    # 7zip: 7z, 7za, 7zr
    # 7zip-standalone: 7zz
    # bat: batcat
    # build-essential: C / C++
    # cargo: Rust
    # command-not-found: so LLMs will notice missing commands can be installed
    # ed: in case the coding harness’s file editing tools fails
    # file: recognize file types
    # golang-go: Go
    # mupdf-tools, poppler-utils: PDF
    # python-is-python3 python3-pip: Python
    # python3-ipykernel: IPython Notebook
    # ripgrep: LLM’s preferred grep
    # vim-nox: replace Vi with the full Vim
    apt-get install -y 7zip 7zip-standalone bat build-essential cargo command-not-found file ed golang-go mupdf-tools poppler-utils python-is-python3 python3-ipykernel python3-pip ripgrep vim-nox

    apt-get purge -y vim-tiny
    apt-file update
    apt-get autoremove -y --purge
    apt-get clean -y
    rm -rf /var/lib/apt/lists/*

    # Node.js, pnpm
    su vscode -c 'set -e; curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash; \. "$HOME/.nvm/nvm.sh"; nvm install --lts; curl -fsSL https://get.pnpm.io | sh -'
    # uv
    su vscode -c 'curl -LsSf https://astral.sh/uv/install.sh | sh'
    # Paseo, Pi
    su vscode -c 'set -e; \. "$HOME/.nvm/nvm.sh"; npm install -g npm; npm install -g @getpaseo/cli @earendil-works/pi-coding-agent'
    # omp
    su vscode -c 'curl -fsSL https://omp.sh/install | sh'
EOF
