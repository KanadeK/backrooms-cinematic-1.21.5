# Backrooms Cinematic for Minecraft Java 1.21.5

> **Publication draft — not released.** This repository is deliberately not public yet: the bundled resource-pack textures, audio, icon, and world assets have no provenance or redistribution licences, and `level.dat` still reports Minecraft 1.14.4. Do not redistribute this draft or treat it as a playable release.

A cinematic Backrooms horror-adventure map intended for Minecraft Java Edition 1.21.5. Static review confirms a large Level 0 maze, chase sequence, industrial area, observation room, pipes, player-scoped objectives and several ending branches. It also detects environmental events and entity encounters in the data pack. A full client playthrough and multi-client test have **not** been completed.

## Current release status

There is no Release download yet. The original project ZIP has been preserved outside this repository. A public release is blocked until the [asset provenance audit](docs/ASSET_PROVENANCE.md) is completed and the world is migrated and tested in Java 1.21.5.

When a release exists, download the complete integrated ZIP from **Releases**. Do not use GitHub's automatically generated `Source code.zip` as a game save.

## What static inspection found

- Four region files and a world-level `resources.zip` assembled by the build tool.
- One `backrooms_core` data pack with 126 `.mcfunction` files.
- Level 0, chase, industrial, observation, pipes and final-stage logic referenced by functions.
- Player-scoped task/ending scores plus shared world event and monster states.
- Eighteen custom sound entries and an HD resource pack (unlicensed pending audit).

## Installation (after an approved release)

1. Download and verify `Backrooms_Java_1.21.5_v0.5.2_Integrated.zip` from Releases.
2. Extract it once; the first directory is `Backrooms_Cinematic_1.21.5_v0.5.2`.
3. Run `install_windows.bat` or `install_linux_macos.sh` inside that world directory, or manually copy that directory to Minecraft's `saves` directory.
4. Start Minecraft Java 1.21.5 and open the world. The resource pack is integrated as `resources.zip`; no duplicate resource-pack install is required.

The installers back up an existing same-name save before copying and never download software, request elevation, modify the registry, or delete user saves. See [installation details](docs/INSTALLATION.md).

## Play, commands, and multiplayer

The data pack exposes the photo trigger `br_photo` (values 1–5, and 99 for checkpoint return). Story and task state are reviewed from source, not playtested. See [story and gameplay](docs/STORY_AND_GAMEPLAY.md), [commands](docs/COMMANDS.md), and [multiplayer](docs/MULTIPLAYER.md).

Recommended settings are discussed in [compatibility](docs/COMPATIBILITY.md). Optional client mods are not included, required, or tested.

## Build and validate

```bash
python tools/build_release.py
python tools/validate_world.py
python tools/verify_release.py dist/Backrooms_Java_1.21.5_v0.5.2_Integrated.zip
```

The default build currently stops with a release-blocker error. That is intentional. For a **private audit only**, both explicit override flags are required; using them does not grant redistribution rights:

```bash
python tools/build_release.py --allow-unverified-assets --allow-version-mismatch
```

## Screenshots

No screenshots are published because this environment has not rendered the map in Minecraft Java 1.21.5. See [SCREENSHOTS.md](docs/SCREENSHOTS.md); only genuine F2 captures from this world with its integrated pack may be added.

## Contributing and licence

Tooling and draft documentation are MIT-licensed under [LICENSE-CODE](LICENSE-CODE). No licence is granted for map, texture, audio, icon, or other game assets while provenance remains unresolved; see [NOTICE.md](NOTICE.md). Contributions are governed by [CONTRIBUTING.md](CONTRIBUTING.md), [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), and [SECURITY.md](SECURITY.md).

This is an unofficial fan-made project and is not affiliated with or endorsed by Mojang Studios, Microsoft, Kane Pixels, or any Backrooms rights holder.

Minecraft is a trademark of Microsoft Corporation. This repository contains an original fan-made adventure map and does not distribute the Minecraft game itself.
