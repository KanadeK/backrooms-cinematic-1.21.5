scoreboard players set @s br_ui 0
execute if score @s br_stage matches 0 if score @s br_fragments matches ..2 run title @s actionbar [{text:'TASK  ',color:'gold',bold:true},{text:'Recover signal fragments  ',color:'yellow'},{score:{name:'@s',objective:'br_fragments'},color:'aqua'},{text:'/3  ',color:'dark_gray'},{text:'/trigger br_hint',color:'gray'}]
execute if score @s br_stage matches 0 if score @s br_fragments matches 3 run title @s actionbar {text:'TASK  Reach the sealed corridor east of Level 0',color:'yellow'}
execute if score @s br_stage matches 1 run title @s actionbar {text:'TASK  Escape the entity — contact causes damage, not a full reset',color:'dark_red',bold:true}
execute if score @s br_stage matches 2 if score @s br_fuse matches 0 run title @s actionbar {text:'TASK  Find the maintenance fuse on the industrial floor',color:'gold'}
execute if score @s br_stage matches 2 if score @s br_fuse matches 1 run title @s actionbar {text:'TASK  Bring the fuse to the observation lift',color:'yellow'}
execute if score @s br_stage matches 3 if score @s br_choice matches 0 run title @s actionbar {text:'TASK  Decide the fate of the archive — open /trigger br_journal',color:'aqua'}
execute if score @s br_stage matches 3 if score @s br_choice matches 1..2 run title @s actionbar {text:'TASK  Enter the service tunnels',color:'yellow'}
execute if score @s br_stage matches 4 if score @s br_valves matches ..2 run title @s actionbar [{text:'TASK  Close pressure valves  ',color:'gold'},{score:{name:'@s',objective:'br_valves'},color:'yellow'},{text:'/3',color:'dark_gray'}]
execute if score @s br_stage matches 4 if score @s br_valves matches 3 run title @s actionbar {text:'TASK  Reach the unlocked pressure door',color:'yellow'}
execute if score @s br_stage matches 5 run title @s actionbar {text:'TASK  Cross the final threshold',color:'white'}
execute if score @s br_stage matches 6 run title @s actionbar {text:'CASE CLOSED — /trigger br_restart to replay and choose another ending',color:'gray'}
function backrooms:v040/hud
function backrooms:v050/hud
