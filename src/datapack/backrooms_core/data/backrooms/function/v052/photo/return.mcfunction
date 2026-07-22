
effect clear @s minecraft:night_vision
gamemode adventure @s
execute if score @s br_stage matches 0 run tp @s 512.5 33 512.5 -90 0
execute if score @s br_stage matches 1 run tp @s 512.5 161 400.5 0 0
execute if score @s br_stage matches 2 run tp @s 512.5 82 480.5 180 0
execute if score @s br_stage matches 3 run tp @s 480.5 129 512.5 -90 0
execute if score @s br_stage matches 4 run tp @s 456.5 97 512.5 -90 0
execute if score @s br_stage matches 5.. run tp @s 512.5 193 486.5 0 0
title @s actionbar {"text":"已返回当前章节检查点","color":"gray"}
scoreboard players set @s br_photo 0
