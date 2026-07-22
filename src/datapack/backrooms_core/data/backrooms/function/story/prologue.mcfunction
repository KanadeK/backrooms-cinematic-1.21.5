tellraw @s [{text:'\n[CASE FILE 06] ',color:'gold',bold:true},{text:'A three-person survey team vanished after transmitting coordinates from Level 0.',color:'gray'}]
tellraw @s {text:'Recover their three signal fragments. The fragments may reveal how to reach the sealed corridor.',color:'yellow'}
tellraw @s [{text:'[OPEN TASK LOG]',color:'aqua',bold:true,click_event:{action:'run_command',command:'/trigger br_journal set 1'}},{text:'   '},{text:'[REQUEST HINT]',color:'green',click_event:{action:'run_command',command:'/trigger br_hint set 1'}}]
function backrooms:v040/story/prologue_extra
