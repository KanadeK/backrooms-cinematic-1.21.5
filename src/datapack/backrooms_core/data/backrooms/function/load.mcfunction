scoreboard objectives add br_stage dummy
scoreboard objectives add br_clock dummy
scoreboard objectives add br_rng dummy
scoreboard objectives add br_cooldown dummy
scoreboard objectives add br_hit_cd dummy
scoreboard objectives add br_deaths deathCount
scoreboard objectives add br_death_seen dummy
scoreboard objectives add br_health health
scoreboard objectives add br_restart trigger
scoreboard objectives add br_journal trigger
scoreboard objectives add br_hint trigger
scoreboard objectives add br_decision trigger
scoreboard objectives add br_ui dummy
scoreboard objectives add br_quest dummy
scoreboard objectives add br_fragments dummy
scoreboard objectives add br_frag_a dummy
scoreboard objectives add br_frag_b dummy
scoreboard objectives add br_frag_c dummy
scoreboard objectives add br_fuse dummy
scoreboard objectives add br_choice dummy
scoreboard objectives add br_valves dummy
scoreboard objectives add br_valve_a dummy
scoreboard objectives add br_valve_b dummy
scoreboard objectives add br_valve_c dummy
scoreboard players set #global br_clock 0
difficulty normal
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule naturalRegeneration true
gamerule showDeathMessages false
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule announceAdvancements false
gamerule doMobLoot false
worldborder center 512 512
worldborder set 1022
setworldspawn 512 33 512
function backrooms:v040/load
function backrooms:v050/load
function backrooms:v051/load
scoreboard objectives add br_photo trigger
function backrooms:v052/load
