
scoreboard players set @s br_radio 0
scoreboard players set @s br_clues 0
scoreboard players set @s br_badge 0
scoreboard players set @s br_camera 0
scoreboard players set @s br_drawing 0
scoreboard players set @s br_breakers 0
scoreboard players set @s br_breaker_a 0
scoreboard players set @s br_breaker_b 0
scoreboard players set @s br_mannequin_awake 0
scoreboard players set @s br_pipe_spawned 0
scoreboard players set @s br_event_cd 120
tag @s add br_restarting
execute unless entity @a[tag=!br_restarting] run function backrooms:v050/world/reset_shared
tag @s remove br_restarting
