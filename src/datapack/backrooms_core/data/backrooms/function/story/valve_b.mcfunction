scoreboard players set @s br_valve_b 1
scoreboard players add @s br_valves 1
playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 0.8 0.55 0
playsound backrooms:steam ambient @s ~ ~ ~ 0.65 0.8 0
particle minecraft:cloud ~ ~1 ~ 0.4 0.7 0.4 0.02 16 force @s
title @s title {text:'VALVE B CLOSED',color:'gold',bold:true}
title @s subtitle {text:'Pressure reduced to 34%.',color:'gray'}
execute if score @s br_valves matches 3 run function backrooms:story/valves_complete
