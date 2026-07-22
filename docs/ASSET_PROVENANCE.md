# Asset provenance audit

**Status: asset rights cleared by owner declaration (2026-07-22).** The project owner states that all included map, texture, audio, icon and data-pack assets were created by them. This declaration is the provenance record for this initial public release; no third-party assets are claimed.

| File or directory | Type | Source | Author | Licence | Modified | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| `src/resourcepack/assets/backrooms/sounds/ambient/*.ogg` (18 files) | Custom audio | Original project work; owner declaration | KanadeK | CC BY 4.0 | Yes/No unknown per file | Used by `sounds.json`. |
| `src/resourcepack/assets/minecraft/textures/**` (131 PNGs) | Texture, normal/specular/emissive maps, entity texture | Original project work; owner declaration | KanadeK | CC BY 4.0 | Yes/No unknown per file | Includes overrides in the Minecraft namespace; the licence covers only the creator's original contribution. |
| `src/resourcepack/assets/minecraft/optifine/**` | CTM configuration and texture variants | Original project work; owner declaration | KanadeK | CC BY 4.0 | Yes | CTM configuration and related original texture variants. |
| `src/resourcepack/pack.png`, `src/world/icon.png` | Icons | Original project work; owner declaration | KanadeK | CC BY 4.0 | Yes/No unknown per file | Attribution required on redistribution. |
| `src/world/region/*.mca`, `level.dat` | World/map design and binary world data | Original project work; owner declaration | KanadeK | CC BY 4.0 | Yes | Technical Minecraft file formats are not licensed beyond the creator's original world design. |
| `src/datapack/backrooms_core/**`, `src/installer/**`, `tools/**`, `docs/**`, `.github/**` | Data-pack code, scripts and documentation | Original project work; owner declaration | KanadeK | MIT (`LICENSE-CODE`) | Yes | Creative assets remain covered by `LICENSE-ASSETS`. |

## Required remediation

1. Keep this table current if assets are added, replaced, or include third-party material.
2. Record the actual author and licence for every future third-party contribution.
3. Keep `LICENSE-ASSETS` and `NOTICE.md` with every redistributed archive.
4. Complete target-client migration and runtime validation before publishing.

## Metadata evidence

The 2026-07-22 local audit found no PNG text metadata (`tEXt`, `zTXt`, or `iTXt`) in the resource-pack images. Every custom OGG contained only `Lavf61.7.100` / `Lavc61.19.101 libvorbis` encoder comments; none contained author, copyright, URL, source, or licence tags. The owner declaration above supplies the provenance that file metadata did not.
