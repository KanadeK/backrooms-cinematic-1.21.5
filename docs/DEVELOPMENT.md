# Development

`src/world` holds non-resource world state; `src/datapack` holds the extracted data pack; `src/resourcepack` is rebuilt into world-root `resources.zip`; and `src/installer` is copied into the built world. `dist/` is ignored and only stores local build output.

Run the standard build, validation, independent verification and checksum commands listed in the README. The build deliberately refuses a public-release artifact while world version metadata disagrees with the target. Do not remove that gate to publish.
