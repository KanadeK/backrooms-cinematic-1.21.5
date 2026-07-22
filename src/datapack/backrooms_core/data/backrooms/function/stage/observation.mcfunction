scoreboard players set @s br_stage 3
scoreboard players set @s br_quest 5
scoreboard players set @s br_cooldown 80
spawnpoint @s 480 129 512
tp @s 480.5 129 512.5 -90 0
title @s title {text:'OBSERVATION GRID B',color:'aqua',bold:true}
title @s subtitle {text:'The missing team reached this terminal.',color:'gray'}
playsound backrooms:machine ambient @s ~ ~ ~ 0.7 0.9 0
function backrooms:story/observation_choice
function backrooms:v040/stage/observation
