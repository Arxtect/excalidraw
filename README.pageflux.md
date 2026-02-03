# Excalidraw (@pageflux/excalidraw)

This repo consumes Excalidraw via the published npm package `@pageflux/excalidraw`.
The local `packages/excalidraw` workspace has been removed.

## Install/Update

After publishing a new version:

```bash
pnpm -C /home/jancsitech/dev/pageflux/PointerWeb install
```

## Publish (from external Excalidraw repo)

Use the helper script in the Excalidraw repo:

```bash
/home/jancsitech/dev/pageflux/excalidraw/publish-excalidraw.sh
```

The script builds and publishes `@pageflux/excalidraw`, then you can update this repo with `pnpm install`.
