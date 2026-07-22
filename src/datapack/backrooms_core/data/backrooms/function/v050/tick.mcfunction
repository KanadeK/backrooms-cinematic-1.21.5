
execute as @a[tag=!br_v050_initialized] run function backrooms:v050/player_init
execute as @a[scores={br_watcher_timer=1}] at @s run function backrooms:v040/monster/watcher_clear
execute as @a[scores={br_false_timer=1}] at @s run function backrooms:v040/events/false_exit_close
execute as @a[scores={br_shadow_timer=1}] at @s run function backrooms:v050/events/shadow_clear
execute as @a[scores={br_watcher_timer=1..}] run scoreboard players remove @s br_watcher_timer 1
execute as @a[scores={br_false_timer=1..}] run scoreboard players remove @s br_false_timer 1
execute as @a[scores={br_shadow_timer=1..}] run scoreboard players remove @s br_shadow_timer 1
execute as @a[scores={br_stage=0,br_tape_a=0}] at @s if entity @s[x=588,y=32,z=556,dx=8,dy=5,dz=8] run function backrooms:v050/story/tape_a
execute as @a[scores={br_stage=0,br_tape_b=0}] at @s if entity @s[x=594,y=32,z=448,dx=8,dy=5,dz=8] run function backrooms:v050/story/tape_b
execute as @a[scores={br_stage=2,br_tape_c=0}] at @s if entity @s[x=568,y=63,z=490,dx=7,dy=5,dz=8] run function backrooms:v050/story/tape_c
execute as @a[scores={br_stage=3,br_tape_d=0}] at @s if entity @s[x=536,y=128,z=464,dx=8,dy=5,dz=8] run function backrooms:v050/story/tape_d
execute as @a[scores={br_stage=4,br_tape_e=0}] at @s if entity @s[x=532,y=96,z=544,dx=8,dy=5,dz=8] run function backrooms:v050/story/tape_e
execute as @a[scores={br_stage=0,br_anom_a=0}] at @s if entity @s[x=582,y=32,z=550,dx=22,dy=5,dz=20] run function backrooms:v050/story/anomaly_birthday
execute as @a[scores={br_stage=0,br_anom_b=0}] at @s if entity @s[x=586,y=32,z=442,dx=24,dy=5,dz=20] run function backrooms:v050/story/anomaly_portraits
execute as @a[scores={br_stage=4,br_anom_c=0}] at @s if entity @s[x=518,y=96,z=536,dx=28,dy=5,dz=20] run function backrooms:v050/story/anomaly_nursery
execute as @a[scores={br_stage=2,br_medkit=0}] at @s if entity @s[x=562,y=63,z=498,dx=8,dy=5,dz=6] run function backrooms:v050/story/medical_station
