#!/bin/sh

# We don’t use ghcr.io/devcontainers/features/node to install pnpm because it skips pnpm’s installation scripts on npm v12.
su "${_REMOTE_USER:-vscode}" -c 'unset HOME && export HOME=~ && umask 0002 && . "${NVM_DIR:-/usr/local/share/nvm}/nvm.sh" && npm install -g --allow-scripts=@pnpm/exe @openai/codex @pnpm/exe @earendil-works/pi-coding-agent'
