#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install htmlhint for HTML linting
if ! command -v htmlhint &> /dev/null; then
  npm install -g htmlhint --quiet
fi
