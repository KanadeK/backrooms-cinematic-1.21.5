
scoreboard players set @s br_anom_c 1
scoreboard players add @s br_anomalies 1
playsound backrooms:mannequin ambient @s ~ ~ ~ 0.55 0.56 0
effect give @s minecraft:nausea 2 0 true
title @s title {text:'ANOMALY C — THE OCCUPIED NURSERY',color:'dark_purple',bold:true}
tellraw @s {text:'The blankets are warm. The mobile turns against the direction of the steam.',color:'gray',italic:true}
execute if score @s br_anomalies matches 3 run tellraw @s {text:'ANOMALY SET COMPLETE: The rooms are reconstructing a life from the survey team’s memories.',color:'dark_purple'}
