scoreboard players operation @s br_death_seen = @s br_deaths
scoreboard players set @s br_hit_cd 100
effect give @s minecraft:resistance 5 4 true
effect give @s minecraft:darkness 1 0 true
title @s times 10 50 20
title @s title {text:'CHECKPOINT',color:'dark_red',bold:true}
title @s subtitle {text:'You wake up wounded. Mission progress is preserved.',color:'gray'}
execute if score @s br_stage matches 1 unless entity @e[tag=br_bacteria] run function backrooms:stage/chase_respawn
function backrooms:quest/hud
