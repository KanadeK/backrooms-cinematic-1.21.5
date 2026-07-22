
execute as @a[tag=!br_v040_initialized] run function backrooms:v040/player_init
execute as @a[scores={br_event_cd=1..}] run scoreboard players remove @s br_event_cd 1
execute as @a[scores={br_badge=0,br_stage=0}] at @s if entity @s[x=539,y=32,z=503,dx=7,dy=5,dz=7] run function backrooms:v040/story/clue_badge
execute as @a[scores={br_camera=0,br_stage=2}] at @s if entity @s[x=524,y=63,z=504,dx=8,dy=6,dz=9] run function backrooms:v040/story/clue_camera
execute as @a[scores={br_drawing=0,br_stage=3}] at @s if entity @s[x=489,y=128,z=486,dx=10,dy=7,dz=6] run function backrooms:v040/story/clue_drawing
execute as @a[scores={br_stage=0,br_fragments=3,br_radio=0}] at @s if block 628 34 503 minecraft:lever[powered=true] if block 630 34 503 minecraft:lever[powered=false] if block 632 34 503 minecraft:lever[powered=true] run function backrooms:v040/story/radio_complete
execute as @a[scores={br_stage=0,br_fragments=3,br_radio=0,br_cooldown=0}] at @s if entity @s[x=621,y=32,z=499,dx=16,dy=6,dz=10] run function backrooms:v040/story/radio_hint
execute as @a[scores={br_stage=0,br_fragments=3,br_radio=0,br_cooldown=0}] at @s if entity @s[x=636,y=33,z=508,dx=8,dy=4,dz=8] run function backrooms:v040/story/radio_locked
execute as @a[scores={br_stage=2,br_breaker_a=0}] at @s if block 541 65 519 minecraft:lever[powered=true] run function backrooms:v040/story/breaker_a
execute as @a[scores={br_stage=2,br_breaker_b=0}] at @s if block 545 65 519 minecraft:lever[powered=true] run function backrooms:v040/story/breaker_b
execute as @a[scores={br_stage=2,br_fuse=1,br_breakers=..1,br_cooldown=0}] at @s if entity @s[x=556,y=64,z=556,dx=10,dy=6,dz=10] run function backrooms:v040/story/breaker_locked
execute if score #world br_mannequin_awake matches 0 as @a[scores={br_stage=3}] at @s if entity @e[tag=br_mannequin,distance=..9] run function backrooms:v040/monster/mannequin_wake
execute as @a[scores={br_stage=3,br_hit_cd=0}] at @s if entity @e[tag=br_mannequin,distance=..1.8] run function backrooms:v040/monster/mannequin_hit
execute if entity @a[scores={br_stage=4}] unless entity @e[tag=br_crawler] run function backrooms:v040/monster/spawn_crawlers
execute as @a[scores={br_stage=4,br_hit_cd=0}] at @s if entity @e[tag=br_crawler,distance=..1.5] run function backrooms:v040/monster/crawler_hit
execute as @e[tag=br_crawler] run effect give @s minecraft:speed 2 1 true
execute as @e[tag=br_crawler] run effect give @s minecraft:weakness 2 255 true
execute as @e[tag=br_mannequin] run effect give @s minecraft:speed 2 1 true
execute as @e[tag=br_mannequin] run effect give @s minecraft:weakness 2 255 true
execute unless entity @a[scores={br_stage=4}] run kill @e[tag=br_crawler]
execute unless entity @a[scores={br_stage=3}] if score #world br_mannequin_awake matches 1 run function backrooms:v040/monster/reset_mannequins
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..4}] store result score @s br_v050_rng run random value 1..9
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0,br_v050_rng=1}] at @s run function backrooms:v040/monster/watcher_event
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..2,br_v050_rng=2}] at @s run function backrooms:v040/events/false_exit
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..3,br_v050_rng=3}] at @s run function backrooms:v040/events/furniture_shift
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..3,br_v050_rng=4}] at @s run function backrooms:v040/events/radio_burst
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=1..4,br_v050_rng=5}] at @s run function backrooms:v040/events/breathing
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..4,br_v050_rng=6}] at @s run function backrooms:v050/events/lights_out
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..4,br_v050_rng=7}] at @s run function backrooms:v050/events/knock_three
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..3,br_v050_rng=8}] at @s run function backrooms:v050/events/shadow
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0,br_stage=0..4,br_v050_rng=9}] at @s run function backrooms:v050/events/room_number
execute if score #global br_clock matches 120 as @a[scores={br_event_cd=0}] run scoreboard players set @s br_event_cd 160
