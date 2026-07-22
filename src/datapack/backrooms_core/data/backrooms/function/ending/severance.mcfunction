scoreboard players set @s br_stage 6
scoreboard players set @s br_quest 10
scoreboard players set @s br_cooldown 80
tp @s 512.5 193 552.5 180 0
title @s times 20 120 40
title @s title {text:'THE DOOR STAYS QUIET',color:'white',bold:true}
title @s subtitle {text:'Ending II — Severance',color:'gray'}
playsound backrooms:ending master @s ~ ~ ~ 1 1.15 0
tellraw @s {text:'The coordinate index is gone. The door opens into ordinary night air—or something that has learned to imitate it.',color:'gray',italic:true}
tellraw @s [{text:'CASE COMPLETE. ',color:'gold',bold:true},{text:'Use ',color:'gray'},{text:'/trigger br_restart',color:'yellow'},{text:' to replay and restore the archive.',color:'gray'}]
