# Asset provenance audit

**Status: PUBLIC RELEASE BLOCKED.** The input package includes no licence, credits, author metadata, purchase record, or permission record for the assets below. “UNVERIFIED” means no redistribution permission is granted by this repository.

| File or directory | Type | Source | Author | Licence | Modified | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| `src/resourcepack/assets/backrooms/sounds/ambient/*.ogg` (18 files) | Custom audio | UNVERIFIED | UNVERIFIED | UNVERIFIED | Unknown | Used by `sounds.json`; replace with recorded/original CC0 or CC-BY sounds and record each source. |
| `src/resourcepack/assets/minecraft/textures/**` (131 PNGs) | Texture, normal/specular/emissive maps, entity texture | UNVERIFIED | UNVERIFIED | UNVERIFIED | Unknown | Includes overrides for Minecraft namespaces; do not label as open source or redistribute without rights review. |
| `src/resourcepack/assets/minecraft/optifine/**` | CTM configuration and texture variants | UNVERIFIED | UNVERIFIED | UNVERIFIED | Unknown | Requires the associated texture provenance. |
| `src/resourcepack/pack.png` | Resource-pack icon | UNVERIFIED | UNVERIFIED | UNVERIFIED | Unknown | Replace with an original CC0/CC-BY icon or retain written permission. |
| `src/world/icon.png` | World icon | UNVERIFIED | UNVERIFIED | UNVERIFIED | Unknown | Replace or document ownership before release. |
| `src/world/region/*.mca`, `level.dat` | World/map design and binary world data | UNVERIFIED | UNVERIFIED | UNVERIFIED | Unknown | Obtain the map creator’s written authorisation and confirm no copied map content. |
| `src/datapack/backrooms_core/**` | Data-pack functions, story text, JSON | UNVERIFIED | UNVERIFIED | UNVERIFIED | Unknown | Attribute original contributors and confirm authority to license code/text before granting MIT. |
| `tools/**`, `docs/**`, `.github/**` | Repository tooling and documentation | Local draft contribution | KanadeK | MIT (`LICENSE-CODE`) | Yes | This licence does not extend to the items above. |

## Required remediation

1. Produce a provenance row for every audio/texture source, including a direct source record, author, licence version, and modification status.
2. Replace every unlicensed file with original or suitably licensed work when records cannot be obtained.
3. Confirm map and data-pack authorship in writing, then update this table and add third-party notices.
4. Add `LICENSE-ASSETS` only after every included asset has compatible, documented redistribution terms.
5. Run the standard build and validation commands without overrides before publishing.

No `LICENSE-ASSETS` exists by design: creating one now would falsely imply rights that were not evidenced.
