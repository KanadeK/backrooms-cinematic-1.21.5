
scoreboard players set #world br_mannequin_awake 1
scoreboard players set @a[scores={br_stage=3}] br_mannequin_awake 1
playsound backrooms:mannequin hostile @a[scores={br_stage=3}] ~ ~ ~ 0.75 0.8 0
effect give @a[scores={br_stage=3}] minecraft:darkness 1 0 true
tellraw @a[scores={br_stage=3}] {text:'OBSERVATION NOTE: The mannequins were facing the glass when power failed.',color:'gray',italic:true}
execute as @e[tag=br_mannequin] run data merge entity @s {NoAI:0b}
