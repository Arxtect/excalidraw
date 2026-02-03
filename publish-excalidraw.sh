# #!/usr/bin/env bash
# set -euo pipefail

# script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# repo_root="${1:-$script_dir}"

# if [[ ! -f "${repo_root}/package.json" ]]; then
#   echo "Invalid repo path: ${repo_root}"
#   exit 1
# fi

# pnpm -C "${repo_root}" install
# pnpm -C "${repo_root}" -r \
#   --filter @excalidraw/common \
#   --filter @excalidraw/math \
#   --filter @excalidraw/element \
#   --filter @excalidraw/utils \
#   --filter @pageflux/excalidraw \
#   run build:esm
pnpm -C "${repo_root}" --filter @pageflux/excalidraw publish --access public --no-git-checks
