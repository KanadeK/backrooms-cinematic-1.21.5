tellraw @s [{text:'OPTIONAL EVIDENCE: ',color:'dark_aqua',bold:true},{score:{name:'@s',objective:'br_clues'},color:'aqua'},{text:'/3  Radio: ',color:'gray'},{score:{name:'@s',objective:'br_radio'},color:'aqua'},{text:'/1  Breakers: ',color:'gray'},{score:{name:'@s',objective:'br_breakers'},color:'gold'},{text:'/2',color:'dark_gray'}]
execute if score @s br_badge matches 1 run tellraw @s {text:'• Mara Voss identification badge recovered.',color:'gray'}
execute if score @s br_camera matches 1 run tellraw @s {text:'• Damaged survey camera recovered.',color:'gray'}
execute if score @s br_drawing matches 1 run tellraw @s {text:'• Childlike observation-room drawing recovered.',color:'gray'}
execute if score @s br_choice matches 1 if score @s br_clues matches 3 run tellraw @s {text:'HIDDEN ROUTE AVAILABLE: The complete identities can be appended to the broadcast.',color:'aqua'}
