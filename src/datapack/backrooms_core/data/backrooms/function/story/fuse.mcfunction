scoreboard players set @s br_fuse 1
scoreboard players set @s br_quest 4
playsound minecraft:block.lever.click master @s ~ ~ ~ 0.8 0.7 0
playsound backrooms:machine ambient @s ~ ~ ~ 0.45 1.25 0
particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.04 18 force @s
title @s title {text:'MAINTENANCE FUSE',color:'gold',bold:true}
tellraw @s {text:'The label reads: ASYNC RESEARCH — OBSERVATION GRID B.',color:'gray',italic:true}
tellraw @s {text:'MISSION UPDATE: Carry the fuse to the powered lift at the far end of the industrial floor.',color:'yellow'}
