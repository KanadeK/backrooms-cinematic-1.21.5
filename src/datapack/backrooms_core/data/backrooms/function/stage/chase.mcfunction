scoreboard players set @s br_stage 1
scoreboard players set @s br_quest 2
scoreboard players set @s br_cooldown 80
spawnpoint @s 512 161 400
tp @s 512.5 161 400.5 0 0
title @s title {text:'RUN',color:'dark_red',bold:true}
title @s subtitle {text:'The third recording was a warning.',color:'gray',italic:true}
playsound backrooms:chase hostile @s ~ ~ ~ 1 1 0
execute unless entity @e[tag=br_bacteria] run summon minecraft:wither_skeleton 512.5 161 389.5 {Tags:['br_bacteria'],PersistenceRequired:1b,Silent:1b,CanPickUpLoot:0b,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
