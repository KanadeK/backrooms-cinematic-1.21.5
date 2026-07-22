# Installation

This document describes the intended procedure after a verified Release exists. The current repository is an unpublished audit draft.

Extract the release once and open `Backrooms_Cinematic_1.21.5_v0.5.2`. Run the platform installer in that directory or manually copy the entire directory into the Minecraft `saves` directory. The resource pack is embedded as `resources.zip` in the world root.

Windows uses `%APPDATA%\.minecraft\saves`; Linux uses `~/.minecraft/saves`; macOS uses `~/Library/Application Support/minecraft/saves`. Existing same-name saves are timestamped and moved to a backup before installation. If a backup cannot be made, the installer exits with an error instead of overwriting a save.

Open the map with Java Edition 1.21.5 only after the world has been migrated and playtested for that version. Current `level.dat` identifies itself as 1.14.4, so migration remains unverified.
