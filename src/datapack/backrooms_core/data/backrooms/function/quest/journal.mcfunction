scoreboard players set @s br_journal 0
tellraw @s {text:'\n━━━━━━━━ CASE FILE 06 ━━━━━━━━',color:'gold',bold:true}
tellraw @s [{text:'Signal fragments: ',color:'gray'},{score:{name:'@s',objective:'br_fragments'},color:'aqua'},{text:'/3   Maintenance fuse: ',color:'gray'},{score:{name:'@s',objective:'br_fuse'},color:'gold'},{text:'/1   Valves: ',color:'gray'},{score:{name:'@s',objective:'br_valves'},color:'yellow'},{text:'/3',color:'dark_gray'}]
execute if score @s br_stage matches 0 if score @s br_fragments matches ..2 run tellraw @s {text:'CURRENT TASK: Recover three fragments left by the missing survey team.',color:'yellow'}
execute if score @s br_stage matches 0 if score @s br_fragments matches 3 run tellraw @s {text:'CURRENT TASK: Reach the sealed corridor east of Level 0.',color:'yellow'}
execute if score @s br_stage matches 1 run tellraw @s {text:'CURRENT TASK: Escape. The entity deals two hearts per contact with a short cooldown.',color:'dark_red'}
execute if score @s br_stage matches 2 if score @s br_fuse matches 0 run tellraw @s {text:'CURRENT TASK: Search the industrial floor for a maintenance fuse.',color:'yellow'}
execute if score @s br_stage matches 2 if score @s br_fuse matches 1 run tellraw @s {text:'CURRENT TASK: Carry the fuse to Observation Grid B.',color:'yellow'}
execute if score @s br_stage matches 3 if score @s br_choice matches 0 run function backrooms:story/observation_choice
execute if score @s br_stage matches 3 if score @s br_choice matches 1 run tellraw @s {text:'DECISION: Archive restored. The transmitter is broadcasting.',color:'aqua'}
execute if score @s br_stage matches 3 if score @s br_choice matches 2 run tellraw @s {text:'DECISION: Archive destroyed. The coordinate index has been erased.',color:'red'}
execute if score @s br_stage matches 4 run tellraw @s {text:'CURRENT TASK: Close all three pressure valves before entering the final corridor.',color:'yellow'}
execute if score @s br_stage matches 5 run tellraw @s {text:'CURRENT TASK: Cross the final threshold and learn what your decision changed.',color:'white'}
execute if score @s br_stage matches 6 if score @s br_choice matches 1 run tellraw @s {text:'ENDING RECORDED: The Signal.',color:'aqua',bold:true}
execute if score @s br_stage matches 6 if score @s br_choice matches 2 run tellraw @s {text:'ENDING RECORDED: Severance.',color:'red',bold:true}
tellraw @s [{text:'[REQUEST HINT]',color:'green',click_event:{action:'run_command',command:'/trigger br_hint set 1'}},{text:'   '},{text:'[RESTART CASE]',color:'gray',click_event:{action:'run_command',command:'/trigger br_restart set 1'}}]
function backrooms:v040/journal
function backrooms:v050/journal
