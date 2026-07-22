
scoreboard players set @s br_medkit 1
effect give @s minecraft:regeneration 8 1 true
effect give @s minecraft:resistance 5 1 true
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.45 0.72 0
title @s actionbar {text:'Emergency station used. The label lists tomorrow’s date.',color:'green',italic:true}
