scoreboard players set @s br_radio 1
scoreboard players set @s br_cooldown 80
setblock 628 36 503 minecraft:redstone_lamp[lit=true]
setblock 630 36 503 minecraft:redstone_lamp[lit=false]
setblock 632 36 503 minecraft:redstone_lamp[lit=true]
playsound backrooms:radio ambient @s ~ ~ ~ 0.85 0.78 0
effect give @s minecraft:darkness 1 0 true
title @s title {text:'FREQUENCY 47.0.47',color:'aqua',bold:true}
title @s subtitle {text:'The sealed corridor answers from the other side.',color:'gray'}
tellraw @s {text:'RADIO TRANSCRIPT: “We left three objects. Do not trust the fourth voice.”',color:'dark_aqua',italic:true}
