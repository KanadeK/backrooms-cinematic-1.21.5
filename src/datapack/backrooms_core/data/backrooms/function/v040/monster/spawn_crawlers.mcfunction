
summon minecraft:cave_spider 470.5 97 508.5 {Tags:['br_crawler'],PersistenceRequired:1b,Silent:1b,Invulnerable:1b}
summon minecraft:cave_spider 510.5 97 520.5 {Tags:['br_crawler'],PersistenceRequired:1b,Silent:1b,Invulnerable:1b}
summon minecraft:cave_spider 548.5 97 504.5 {Tags:['br_crawler'],PersistenceRequired:1b,Silent:1b,Invulnerable:1b}
scoreboard players set @a[scores={br_stage=4}] br_pipe_spawned 1
playsound backrooms:scrape hostile @a[scores={br_stage=4}] ~ ~ ~ 0.65 0.7 0
tellraw @a[scores={br_stage=4}] {text:'Something begins moving inside the pipe walls.',color:'dark_red',italic:true}
