scoreboard players set @s br_stage 6
scoreboard players set @s br_quest 11
scoreboard players set @s br_cooldown 100
tp @s 512.5 193 552.5 180 0
effect give @s minecraft:darkness 2 0 true
title @s times 20 140 50
title @s title {text:'A RETURN ADDRESS',color:'aqua',bold:true}
title @s subtitle {text:'Ending III — The Fourth Name',color:'gray'}
playsound backrooms:ending master @s ~ ~ ~ 1 0.62 0
playsound backrooms:radio ambient @s ~ ~ ~ 0.7 0.48 0
tellraw @s {text:'You append the three recovered identities to the signal. The transmitter replies with four names. The fourth is yours.',color:'gray',italic:true}
tellraw @s {text:'Beyond the threshold is the abandoned office from Level 0, now containing four occupied chairs.',color:'dark_aqua',italic:true}
tellraw @s [{text:'HIDDEN ENDING COMPLETE. ',color:'gold',bold:true},{text:'Use ',color:'gray'},{text:'/trigger br_restart',color:'yellow'},{text:' to investigate another branch.',color:'gray'}]
