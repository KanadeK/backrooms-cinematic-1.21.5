scoreboard players set @s br_stage 4
scoreboard players set @s br_quest 6
scoreboard players set @s br_cooldown 60
spawnpoint @s 456 97 512
tp @s 456.5 97 512.5 -90 0
title @s title {text:'SERVICE TUNNELS',color:'dark_red',bold:true}
title @s subtitle {text:'Close three valves before the pressure door fails.',color:'gray'}
playsound backrooms:steam ambient @s ~ ~ ~ 0.9 0.8 0
function backrooms:v040/stage/pipes
