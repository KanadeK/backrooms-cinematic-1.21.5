scoreboard players set @s br_breaker_a 1
scoreboard players add @s br_breakers 1
playsound minecraft:block.lever.click master @s ~ ~ ~ 0.75 0.8 0
playsound backrooms:alarm ambient @s ~ ~ ~ 0.35 0.8 0
title @s title {text:'BREAKER A ONLINE',color:'gold',bold:true}
execute if score @s br_breakers matches 2 run function backrooms:v040/story/breakers_complete
