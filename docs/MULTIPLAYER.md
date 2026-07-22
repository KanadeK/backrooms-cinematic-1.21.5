# Multiplayer (static review only)

Recommended group size has not been playtested. Start with 1–4 players after a dedicated multi-client test. Multiplayer logic has been statically reviewed, but a full multi-client playthrough has not yet been completed.

`br_stage`, task fragments, clues, tapes, anomalies, valves and ending scores are selected per player in data-pack functions. Global clocks, random events, mannequin state, crawler spawning and some world setup/reset functions are shared. Therefore players can pursue personal progression, but environment changes and public triggers can affect the group.

A late joiner is initialized by the player initialization path; this has not been tested in a running server. Death recovery is issued per player, although shared monsters may remain active. Player restart invokes reset paths that can affect shared entities or world state; coordinate before using it. Shared levers, rooms and block-state puzzles may be consumable or changed for everyone.

For LAN, open the tested world to LAN after approval. For a dedicated server, place the world directory in the server directory, select it in `server.properties`, and enable command blocks (`enable-command-block=true`) because the map uses functions and commands. Set PvP according to group preference; it is not part of the reviewed progression. Begin with Normal difficulty, 10+ render distance and 8+ simulation distance, then test performance. Document actual test results before claiming support.
