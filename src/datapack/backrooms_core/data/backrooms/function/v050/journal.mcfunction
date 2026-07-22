
tellraw @s [{text:'LOST RECORDINGS: ',color:'dark_aqua',bold:true},{score:{name:'@s',objective:'br_tapes'},color:'aqua'},{text:'/5   Documented anomalies: ',color:'gray'},{score:{name:'@s',objective:'br_anomalies'},color:'light_purple'},{text:'/3',color:'dark_gray'}]
execute if score @s br_tape_a matches 1 run tellraw @s {text:'• Recorder 04: The fifth place setting.',color:'gray'}
execute if score @s br_tape_b matches 1 run tellraw @s {text:'• Recorder 07: Reverse portraits.',color:'gray'}
execute if score @s br_tape_c matches 1 run tellraw @s {text:'• Recorder 11: The downward lift.',color:'gray'}
execute if score @s br_tape_d matches 1 run tellraw @s {text:'• Recorder 15: The false apartment.',color:'gray'}
execute if score @s br_tape_e matches 1 run tellraw @s {text:'• Recorder 19: The occupied nursery.',color:'gray'}
execute if score @s br_tapes matches 5 if score @s br_anomalies matches 3 run tellraw @s {text:'SECRET CONDITION MET: Destroying the archive will expose the full Case 06 loop.',color:'dark_purple',bold:true}
tellraw @s {text:'MULTIPLAYER: Progress, damage, journals and endings are personal. Levers, doors and monsters are shared; another player restarting will not reset your run.',color:'dark_gray',italic:true}
