scoreboard players set @s br_camera 1
scoreboard players add @s br_clues 1
playsound backrooms:radio ambient @s ~ ~ ~ 0.55 1.1 0
particle minecraft:dust_plume ~ ~1 ~ 0.3 0.5 0.3 0.02 14 force @s
title @s title {text:'DAMAGED CAMERA',color:'dark_aqua',bold:true}
tellraw @s {text:'The final frame shows the observation room before the team ever entered it.',color:'gray',italic:true}
tellraw @s [{text:'OPTIONAL EVIDENCE  ',color:'dark_aqua',bold:true},{score:{name:'@s',objective:'br_clues'},color:'aqua'},{text:'/3',color:'dark_gray'}]
