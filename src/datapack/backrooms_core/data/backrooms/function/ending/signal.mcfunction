scoreboard players set @s br_stage 6
scoreboard players set @s br_quest 9
scoreboard players set @s br_cooldown 80
tp @s 512.5 193 552.5 180 0
effect give @s minecraft:darkness 2 0 true
title @s times 20 120 40
title @s title {text:'YOU WERE HEARD',color:'aqua',bold:true}
title @s subtitle {text:'Ending I — The Signal',color:'gray'}
playsound backrooms:ending master @s ~ ~ ~ 1 0.75 0
tellraw @s {text:'The transmitter never confirms who received the coordinates. Behind you, the fluorescent lights begin switching off one by one.',color:'gray',italic:true}
tellraw @s [{text:'CASE COMPLETE. ',color:'gold',bold:true},{text:'Use ',color:'gray'},{text:'/trigger br_restart',color:'yellow'},{text:' to replay and destroy the archive.',color:'gray'}]
