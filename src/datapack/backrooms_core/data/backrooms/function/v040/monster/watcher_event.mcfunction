
execute unless entity @e[tag=br_watcher,distance=..24] positioned ^4 ^ ^12 run summon minecraft:enderman ~ ~ ~ {Tags:['br_watcher'],PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b}
scoreboard players set @s br_watcher_timer 80
playsound backrooms:whisper ambient @s ~ ~ ~ 0.55 0.72 0
title @s actionbar {text:'There is someone at the end of the room.',color:'dark_gray',italic:true}
