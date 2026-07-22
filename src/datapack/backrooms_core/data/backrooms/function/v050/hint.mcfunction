
execute if score @s br_stage matches 0 if score @s br_tape_a matches 0 run tellraw @s {text:'SIDE CASE: A furnished room south-east of Level 0 contains the first lost recorder.',color:'dark_aqua'}
execute if score @s br_stage matches 0 if score @s br_tape_a matches 1 if score @s br_tape_b matches 0 run tellraw @s {text:'SIDE CASE: A narrow portrait corridor lies north of the third survey fragment.',color:'dark_aqua'}
execute if score @s br_stage matches 2 if score @s br_tape_c matches 0 run tellraw @s {text:'SIDE CASE: Search the industrial break room beyond the eastern wall.',color:'dark_aqua'}
execute if score @s br_stage matches 3 if score @s br_tape_d matches 0 run tellraw @s {text:'SIDE CASE: The north wall of Observation Grid B opens into an apartment that should not exist.',color:'dark_aqua'}
execute if score @s br_stage matches 4 if score @s br_tape_e matches 0 run tellraw @s {text:'SIDE CASE: Follow the pipe tunnel past the bed to the nursery annex.',color:'dark_aqua'}
