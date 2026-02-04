# Excalidraw (@pageflux/*)

This repo is the source of the Pageflux-scoped packages:

- `@pageflux/common`
- `@pageflux/math`
- `@pageflux/element`
- `@pageflux/utils`
- `@pageflux/excalidraw`

PointerWeb consumes `@pageflux/excalidraw` from npm.

## Publish

Use the helper script in this repo:

```bash
/home/jancsitech/dev/pageflux/excalidraw/publish-excalidraw.sh
```

It builds and publishes all `@pageflux/*` packages. After publishing, update PointerWeb:

```bash
pnpm -C /home/jancsitech/dev/pageflux/PointerWeb install
```
