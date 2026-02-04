#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="${1:-$script_dir}"

if [[ ! -f "${repo_root}/package.json" ]]; then
  echo "Invalid repo path: ${repo_root}"
  exit 1
fi

pnpm -C "${repo_root}" install
pnpm -C "${repo_root}" -r \
  --filter @pageflux/common \
  --filter @pageflux/math \
  --filter @pageflux/element \
  --filter @pageflux/utils \
  --filter @pageflux/excalidraw \
  run build:esm
pnpm -C "${repo_root}" --filter @pageflux/common publish --access public --no-git-checks
pnpm -C "${repo_root}" --filter @pageflux/math publish --access public --no-git-checks
pnpm -C "${repo_root}" --filter @pageflux/element publish --access public --no-git-checks
pnpm -C "${repo_root}" --filter @pageflux/utils publish --access public --no-git-checks
pnpm -C "${repo_root}" --filter @pageflux/excalidraw publish --access public --no-git-checks
