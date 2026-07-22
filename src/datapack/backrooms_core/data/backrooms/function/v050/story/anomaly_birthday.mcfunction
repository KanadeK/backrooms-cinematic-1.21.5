
scoreboard players set @s br_anom_a 1
scoreboard players add @s br_anomalies 1
playsound backrooms:whisper ambient @s ~ ~ ~ 0.58 0.48 0
effect give @s minecraft:darkness 1 0 true
title @s title {text:'ANOMALY A — THE FIFTH PLACE',color:'dark_purple',bold:true}
tellraw @s {text:'Five plates, four chairs. Your name is written in the dust where the fifth chair should be.',color:'gray',italic:true}
