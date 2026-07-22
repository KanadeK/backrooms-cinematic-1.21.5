scoreboard players add #global br_clock 1
execute as @a[tag=!br_initialized] run function backrooms:player/init
scoreboard players add @a[tag=br_initialized] br_ui 1
execute as @a[scores={br_ui=40..}] run function backrooms:quest/hud
execute as @a[scores={br_cooldown=1..}] run scoreboard players remove @s br_cooldown 1
execute as @a[scores={br_hit_cd=1..}] run scoreboard players remove @s br_hit_cd 1
execute as @a if score @s br_deaths > @s br_death_seen run function backrooms:player/death_recover
scoreboard players enable @a br_restart
scoreboard players enable @a br_journal
scoreboard players enable @a br_hint
scoreboard players enable @a br_decision
execute as @a[scores={br_restart=1..}] run function backrooms:player/restart
execute as @a[scores={br_journal=1..}] run function backrooms:quest/journal
execute as @a[scores={br_hint=1..}] run function backrooms:quest/hint
execute as @a[scores={br_decision=1,br_stage=3,br_choice=0}] run function backrooms:story/choice_restore
execute as @a[scores={br_decision=2,br_stage=3,br_choice=0}] run function backrooms:story/choice_destroy
execute as @a[scores={br_decision=1..}] unless score @s br_stage matches 3 run function backrooms:quest/decision_invalid
execute as @a[scores={br_decision=3..}] run function backrooms:quest/decision_invalid
execute if score #global br_clock matches 200.. run function backrooms:events/random
execute as @a[scores={br_stage=0,br_frag_a=0}] at @s if entity @s[x=536,y=32,z=500,dx=18,dy=6,dz=24] run function backrooms:story/fragment_a
execute as @a[scores={br_stage=0,br_frag_b=0}] at @s if entity @s[x=568,y=32,z=528,dx=22,dy=6,dz=24] run function backrooms:story/fragment_b
execute as @a[scores={br_stage=0,br_frag_c=0}] at @s if entity @s[x=602,y=32,z=474,dx=24,dy=6,dz=24] run function backrooms:story/fragment_c
execute as @a[scores={br_stage=0,br_frag_a=0}] at @s if score #global br_clock matches 20,60,100,140,180 if entity @s[x=504,y=24,z=480,dx=80,dy=20,dz=80] run particle minecraft:electric_spark 544 34 512 0.25 0.55 0.25 0.02 6 force @s
execute as @a[scores={br_stage=0,br_frag_b=0}] at @s if score #global br_clock matches 20,60,100,140,180 if entity @s[x=536,y=24,z=496,dx=96,dy=20,dz=96] run particle minecraft:electric_spark 578 34 540 0.25 0.55 0.25 0.02 6 force @s
execute as @a[scores={br_stage=0,br_frag_c=0}] at @s if score #global br_clock matches 20,60,100,140,180 if entity @s[x=568,y=24,z=448,dx=96,dy=20,dz=96] run particle minecraft:electric_spark 614 34 486 0.25 0.55 0.25 0.02 6 force @s
execute as @a[scores={br_stage=0,br_fragments=3,br_radio=1}] at @s if entity @s[x=636,y=33,z=508,dx=8,dy=4,dz=8] run function backrooms:stage/chase
execute as @a[scores={br_stage=0,br_fragments=..2,br_cooldown=0}] at @s if entity @s[x=636,y=33,z=508,dx=8,dy=4,dz=8] run function backrooms:story/gate_locked
execute as @a[scores={br_stage=0,br_cooldown=0}] at @s if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run function backrooms:events/teleport_maze
execute as @a[scores={br_stage=1,br_hit_cd=0}] at @s if entity @e[tag=br_bacteria,distance=..1.8] run function backrooms:stage/caught
execute as @a[scores={br_stage=1}] at @s if entity @s[x=504,y=160,z=618,dx=16,dy=5,dz=20] run function backrooms:stage/fall
execute as @a[scores={br_stage=2,br_fuse=0}] at @s if entity @s[x=526,y=63,z=490,dx=16,dy=10,dz=20] run function backrooms:story/fuse
execute as @a[scores={br_stage=2,br_fuse=0}] at @s if score #global br_clock matches 20,60,100,140,180 if entity @s[x=496,y=56,z=464,dx=80,dy=32,dz=80] run particle minecraft:electric_spark 534 66 500 0.35 0.65 0.35 0.03 8 force @s
execute as @a[scores={br_stage=2,br_fuse=1,br_breakers=2}] at @s if entity @s[x=556,y=64,z=556,dx=10,dy=6,dz=10] run function backrooms:stage/observation
execute as @a[scores={br_stage=2,br_fuse=0,br_cooldown=0}] at @s if entity @s[x=556,y=64,z=556,dx=10,dy=6,dz=10] run function backrooms:story/fuse_locked
execute as @a[scores={br_stage=3,br_choice=1..2}] at @s if entity @s[x=540,y=128,z=506,dx=12,dy=6,dz=12] run function backrooms:stage/pipes
execute as @a[scores={br_stage=3,br_choice=0,br_cooldown=0}] at @s if entity @s[x=540,y=128,z=506,dx=12,dy=6,dz=12] run function backrooms:story/choice_locked
execute as @a[scores={br_stage=4,br_valve_a=0}] at @s if entity @s[x=466,y=96,z=504,dx=16,dy=8,dz=16] run function backrooms:story/valve_a
execute as @a[scores={br_stage=4,br_valve_b=0}] at @s if entity @s[x=500,y=96,z=494,dx=20,dy=8,dz=22] run function backrooms:story/valve_b
execute as @a[scores={br_stage=4,br_valve_c=0}] at @s if entity @s[x=536,y=96,z=508,dx=22,dy=8,dz=22] run function backrooms:story/valve_c
execute as @a[scores={br_stage=4,br_valve_a=0}] at @s if score #global br_clock matches 20,60,100,140,180 run particle minecraft:cloud 474 98 512 0.35 0.65 0.35 0.02 5 force @s
execute as @a[scores={br_stage=4,br_valve_b=0}] at @s if score #global br_clock matches 20,60,100,140,180 run particle minecraft:cloud 510 98 504 0.35 0.65 0.35 0.02 5 force @s
execute as @a[scores={br_stage=4,br_valve_c=0}] at @s if score #global br_clock matches 20,60,100,140,180 run particle minecraft:cloud 548 98 518 0.35 0.65 0.35 0.02 5 force @s
execute as @a[scores={br_stage=4,br_valves=3}] at @s if entity @s[x=566,y=96,z=506,dx=10,dy=6,dz=12] run function backrooms:stage/ending
execute as @a[scores={br_stage=4,br_valves=..2,br_cooldown=0}] at @s if entity @s[x=566,y=96,z=506,dx=10,dy=6,dz=12] run function backrooms:story/valves_locked
execute as @a[scores={br_stage=5}] at @s if entity @s[x=504,y=192,z=544,dx=16,dy=6,dz=14] run function backrooms:stage/complete
execute as @a[scores={br_stage=4,br_valves=..2}] at @s if score #global br_clock matches 20,40,60,80,100,120,140,160,180 run particle minecraft:cloud ~3 ~1 ~ 0.4 0.7 0.4 0.02 7 force @s
execute as @e[tag=br_bacteria] run effect give @s minecraft:speed 2 2 true
execute as @e[tag=br_bacteria] run effect give @s minecraft:resistance 2 4 true
execute as @e[tag=br_bacteria] run effect give @s minecraft:weakness 2 255 true
execute unless entity @a[scores={br_stage=1}] run kill @e[tag=br_bacteria]
execute as @a[gamemode=!adventure,scores={br_stage=..5}] run gamemode adventure @s
function backrooms:v040/tick
function backrooms:v050/tick
function backrooms:v052/tick
