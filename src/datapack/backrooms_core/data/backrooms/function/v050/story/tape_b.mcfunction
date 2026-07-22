
scoreboard players set @s br_tape_b 1
scoreboard players add @s br_tapes 1
playsound backrooms:radio ambient @s ~ ~ ~ 0.62 0.76 0
particle minecraft:electric_spark ~ ~1 ~ 0.25 0.45 0.25 0.03 16 force @s
title @s title {text:'FIELD RECORDER 07/19',color:'dark_aqua',bold:true}
tellraw @s {text:'Every portrait shows the survey team from behind. The newest one includes the person holding this recorder.',color:'gray',italic:true}
tellraw @s [{text:'LOST RECORDINGS  ',color:'dark_aqua',bold:true},{score:{name:'@s',objective:'br_tapes'},color:'aqua'},{text:'/5',color:'dark_gray'}]
execute if score @s br_tapes matches 5 run function backrooms:v050/story/tapes_complete
