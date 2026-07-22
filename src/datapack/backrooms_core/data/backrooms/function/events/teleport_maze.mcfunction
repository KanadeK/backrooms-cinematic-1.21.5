scoreboard players set @s br_cooldown 80
playsound backrooms:warp ambient @s ~ ~ ~ 0.8 1 0
effect give @s minecraft:darkness 1 0 true
execute store result score @s br_rng run random value 1..10
execute if score @s br_rng matches 1 run tp @s 122.5 33 120.5 90 0
execute if score @s br_rng matches 2 run tp @s 890.5 33 136.5 -90 0
execute if score @s br_rng matches 3 run tp @s 138.5 33 872.5 180 0
execute if score @s br_rng matches 4 run tp @s 874.5 33 888.5 180 0
execute if score @s br_rng matches 5 run tp @s 258.5 33 768.5 0 0
execute if score @s br_rng matches 6 run tp @s 770.5 33 256.5 -90 0
execute if score @s br_rng matches 7 run tp @s 322.5 33 320.5 180 0
execute if score @s br_rng matches 8 run tp @s 706.5 33 704.5 180 0
execute if score @s br_rng matches 9 run tp @s 178.5 33 560.5 90 0
execute if score @s br_rng matches 10 run tp @s 850.5 33 496.5 -90 0
