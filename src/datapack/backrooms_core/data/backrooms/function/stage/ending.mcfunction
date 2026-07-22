scoreboard players set @s br_stage 5
scoreboard players set @s br_quest 8
scoreboard players set @s br_cooldown 60
spawnpoint @s 512 193 486
tp @s 512.5 193 486.5 0 0
execute if score @s br_choice matches 1 run title @s title {text:'THE TRANSMITTER ANSWERS',color:'aqua',bold:true}
execute if score @s br_choice matches 1 run title @s subtitle {text:'A voice repeats your coordinates from somewhere ahead.',color:'gray'}
execute if score @s br_choice matches 1 run playsound backrooms:machine ambient @s ~ ~ ~ 0.7 0.55 0
execute if score @s br_choice matches 2 run title @s title {text:'THE SILENT CORRIDOR',color:'white',bold:true}
execute if score @s br_choice matches 2 run title @s subtitle {text:'For the first time, there is no fluorescent hum.',color:'gray'}
execute if score @s br_choice matches 2 run playsound backrooms:ending ambient @s ~ ~ ~ 0.65 1.15 0
function backrooms:v040/stage/final
