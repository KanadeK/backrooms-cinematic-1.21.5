scoreboard players set @s br_decision 0
scoreboard players set @s br_choice 2
scoreboard players set @s br_quest 6
playsound backrooms:flicker ambient @s ~ ~ ~ 0.75 0.65 0
effect give @s minecraft:darkness 2 0 true
title @s title {text:'ARCHIVE DESTROYED',color:'dark_red',bold:true}
title @s subtitle {text:'The coordinate index is gone. The walls become quieter.',color:'gray'}
tellraw @s {text:'The final entry belonged to the missing team: “Do not let it learn the way out.”',color:'gray',italic:true}
