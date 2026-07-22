scoreboard players set @s br_restart 0
scoreboard players set @s br_stage 0
scoreboard players set @s br_quest 0
scoreboard players set @s br_cooldown 80
scoreboard players set @s br_hit_cd 0
scoreboard players set @s br_deaths 0
scoreboard players set @s br_death_seen 0
scoreboard players set @s br_journal 0
scoreboard players set @s br_hint 0
scoreboard players set @s br_decision 0
scoreboard players set @s br_ui 0
scoreboard players set @s br_fragments 0
scoreboard players set @s br_frag_a 0
scoreboard players set @s br_frag_b 0
scoreboard players set @s br_frag_c 0
scoreboard players set @s br_fuse 0
scoreboard players set @s br_choice 0
scoreboard players set @s br_valves 0
scoreboard players set @s br_valve_a 0
scoreboard players set @s br_valve_b 0
scoreboard players set @s br_valve_c 0
effect clear @s
gamemode adventure @s
spawnpoint @s 512 33 512
tp @s 512.5 33 512.5 -90 0
title @s title {text:'CASE REOPENED',color:'yellow',bold:true}
title @s subtitle {text:'The rooms remember nothing. You do.',color:'gray'}
playsound backrooms:entry ambient @s ~ ~ ~ 0.7 0.9 0
function backrooms:story/prologue
function backrooms:v040/player_restart
function backrooms:v050/player_restart
