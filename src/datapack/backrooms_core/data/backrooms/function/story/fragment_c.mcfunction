scoreboard players set @s br_frag_c 1
scoreboard players add @s br_fragments 1
playsound backrooms:warp ambient @s ~ ~ ~ 0.55 1.35 0
particle minecraft:electric_spark ~ ~1 ~ 0.35 0.7 0.35 0.04 22 force @s
title @s title {text:'Fragment 03/03',color:'aqua',bold:true}
tellraw @s [{text:'SURVEY LOG: If the humming stops, do not hide. Run toward the red service light.',color:'gray',italic:true}]
execute if score @s br_fragments matches 3 run function backrooms:story/fragments_complete
