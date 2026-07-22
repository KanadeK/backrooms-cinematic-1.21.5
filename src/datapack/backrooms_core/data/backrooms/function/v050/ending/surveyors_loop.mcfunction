
scoreboard players set @s br_stage 6
scoreboard players set @s br_quest 12
scoreboard players set @s br_cooldown 120
tp @s 512.5 193 552.5 180 0
effect give @s minecraft:darkness 3 0 true
playsound backrooms:ending master @s ~ ~ ~ 1 0.46 0
playsound backrooms:radio master @s ~ ~ ~ 0.72 0.35 0
title @s times 20 150 50
title @s title {text:'THE SURVEYOR’S LOOP',color:'dark_purple',bold:true}
title @s subtitle {text:'Ending IV — Case 06 was always your report',color:'gray'}
tellraw @s {text:'The destroyed archive returns as five intact recordings. Each is spoken in your voice. The first recording begins with your arrival tomorrow.',color:'gray',italic:true}
tellraw @s {text:'Behind the exit is the birthday room. This time, the fifth chair is present.',color:'dark_purple',italic:true}
tellraw @s [{text:'SECRET ENDING COMPLETE. ',color:'gold',bold:true},{text:'The environment is shared in multiplayer, but each player records their own ending.',color:'gray'}]
