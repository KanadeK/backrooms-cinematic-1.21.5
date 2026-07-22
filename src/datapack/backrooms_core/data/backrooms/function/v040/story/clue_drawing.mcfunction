scoreboard players set @s br_drawing 1
scoreboard players add @s br_clues 1
playsound backrooms:radio ambient @s ~ ~ ~ 0.55 1.1 0
particle minecraft:dust_plume ~ ~1 ~ 0.3 0.5 0.3 0.02 14 force @s
title @s title {text:'CHILDS DRAWING',color:'dark_aqua',bold:true}
tellraw @s {text:'Three figures stand behind glass. A fourth figure is drawn on your side.',color:'gray',italic:true}
tellraw @s [{text:'OPTIONAL EVIDENCE  ',color:'dark_aqua',bold:true},{score:{name:'@s',objective:'br_clues'},color:'aqua'},{text:'/3',color:'dark_gray'}]
