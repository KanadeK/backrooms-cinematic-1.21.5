scoreboard players set @s br_hit_cd 50
playsound backrooms:caught hostile @s ~ ~ ~ 0.85 0.9 0
effect give @s minecraft:darkness 1 0 true
effect give @s minecraft:slowness 2 1 true
effect give @s minecraft:weakness 3 0 true
damage @s 4 minecraft:generic
title @s actionbar [{text:'ENTITY HIT  ',color:'dark_red',bold:true},{text:'Health: ',color:'gray'},{score:{name:'@s',objective:'br_health'},color:'red'},{text:' / 20',color:'dark_gray'}]
