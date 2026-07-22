# Compatibility

Target: Minecraft Java Edition 1.21.5. The data-pack `pack_format` is 71 and the resource-pack `pack_format` is 55. However, `level.dat` has `DataVersion=1976` and a visible `1.14.4` version name. This mismatch is a release blocker until the world is opened, migrated and tested in the target client.

Optional client mods mentioned by the original notes are Fabric, Sodium, Iris, Continuity, Indium and Sound Physics Remastered. None is required, distributed, bundled, or actually tested by this draft. Verify each mod’s Java 1.21.5 loader/version and obtain it from its official project page. Connected-texture and shader behavior may differ by mod configuration.

Known limitations: no Java 1.21.5 runtime test, no full single-player completion test, no multi-client test, no shader test, and unresolved asset rights.
