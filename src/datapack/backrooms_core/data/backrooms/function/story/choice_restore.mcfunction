scoreboard players set @s br_decision 0
scoreboard players set @s br_choice 1
scoreboard players set @s br_quest 6
playsound backrooms:machine ambient @s ~ ~ ~ 0.9 1.1 0
effect give @s minecraft:darkness 1 0 true
title @s title {text:'ARCHIVE RESTORED',color:'aqua',bold:true}
title @s subtitle {text:'A transmitter begins broadcasting the coordinates.',color:'gray'}
tellraw @s {text:'The terminal replies: SIGNAL ACCEPTED. LISTENER UNKNOWN.',color:'dark_aqua',italic:true}
