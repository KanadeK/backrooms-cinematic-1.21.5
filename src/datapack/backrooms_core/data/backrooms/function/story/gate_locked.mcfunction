scoreboard players set @s br_cooldown 100
playsound minecraft:block.iron_door.close master @s ~ ~ ~ 0.55 0.7 0
title @s actionbar [{text:'SEALED CORRIDOR  ',color:'dark_red',bold:true},{text:'Signal fragments: ',color:'gray'},{score:{name:'@s',objective:'br_fragments'},color:'aqua'},{text:'/3',color:'dark_gray'}]
