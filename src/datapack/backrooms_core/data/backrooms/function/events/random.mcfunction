scoreboard players set #global br_clock 0
execute as @a at @s run playsound backrooms:fluorescent ambient @s ~ ~ ~ 0.30 1 0
execute store result score #event br_rng run random value 1..9
execute if score #event br_rng matches 1 run function backrooms:events/flicker
execute if score #event br_rng matches 2 run function backrooms:events/footsteps
execute if score #event br_rng matches 3 run function backrooms:events/impact
execute if score #event br_rng matches 4 as @a[scores={br_stage=0}] at @s run particle minecraft:ash ~ ~1 ~ 2 0.2 2 0.005 12 force @s
execute if score #event br_rng matches 5 as @a[scores={br_stage=2..3}] at @s run playsound backrooms:machine ambient @s ~ ~ ~ 0.38 0.8 0
execute if score #event br_rng matches 6 as @a[scores={br_stage=4}] at @s run playsound backrooms:steam ambient @s ~3 ~1 ~ 0.65 1 0
execute if score #event br_rng matches 7 as @a[scores={br_stage=0,br_fragments=..2}] at @s run playsound backrooms:warp ambient @s ~16 ~ ~-10 0.25 0.65 0
execute if score #event br_rng matches 8 as @a[scores={br_stage=3,br_choice=1}] at @s run playsound backrooms:distant ambient @s ~-12 ~ ~8 0.38 0.55 0
execute if score #event br_rng matches 9 as @a[scores={br_stage=4,br_valves=..2}] at @s run effect give @s minecraft:nausea 2 0 true
