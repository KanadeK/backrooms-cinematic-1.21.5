
execute unless entity @e[tag=br_shadow,distance=..20] positioned ^ ^ ^-7 run summon minecraft:zombie ~ ~ ~ {Tags:['br_shadow'],PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b}
scoreboard players set @s br_shadow_timer 35
playsound backrooms:breathing hostile @s ~ ~ ~ 0.48 0.52 0
title @s actionbar {text:'Do not turn around.',color:'dark_red',italic:true}
