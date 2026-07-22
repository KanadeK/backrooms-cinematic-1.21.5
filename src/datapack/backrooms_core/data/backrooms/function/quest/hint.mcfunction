scoreboard players set @s br_hint 0
execute if score @s br_stage matches 0 if score @s br_frag_a matches 0 run tellraw @s {text:'HINT: Fragment 1 is east of the starting room, inside the first wide chamber.',color:'green'}
execute if score @s br_stage matches 0 if score @s br_frag_a matches 1 if score @s br_frag_b matches 0 run tellraw @s {text:'HINT: Fragment 2 is southeast, where the humming becomes lower and uneven.',color:'green'}
execute if score @s br_stage matches 0 if score @s br_frag_a matches 1 if score @s br_frag_b matches 1 if score @s br_frag_c matches 0 run tellraw @s {text:'HINT: Fragment 3 is in the northern side passage before the sealed corridor.',color:'green'}
execute if score @s br_stage matches 0 if score @s br_fragments matches 3 run tellraw @s {text:'HINT: Continue east toward the strongest fluorescent hum.',color:'green'}
execute if score @s br_stage matches 1 run tellraw @s {text:'HINT: Keep moving forward through the red-lit route. Contact costs two hearts, with a short grace period.',color:'green'}
execute if score @s br_stage matches 2 if score @s br_fuse matches 0 run tellraw @s {text:'HINT: The fuse is east-southeast of the industrial checkpoint, near a sparking machine bay.',color:'green'}
execute if score @s br_stage matches 2 if score @s br_fuse matches 1 run tellraw @s {text:'HINT: The powered lift is farther east on the industrial floor.',color:'green'}
execute if score @s br_stage matches 3 if score @s br_choice matches 0 run function backrooms:story/observation_choice
execute if score @s br_stage matches 3 if score @s br_choice matches 1..2 run tellraw @s {text:'HINT: Leave the observation room through the eastern service passage.',color:'green'}
execute if score @s br_stage matches 4 if score @s br_valve_a matches 0 run tellraw @s {text:'HINT: Valve A is immediately east of the tunnel checkpoint.',color:'green'}
execute if score @s br_stage matches 4 if score @s br_valve_a matches 1 if score @s br_valve_b matches 0 run tellraw @s {text:'HINT: Valve B is near the central pipe junction.',color:'green'}
execute if score @s br_stage matches 4 if score @s br_valve_a matches 1 if score @s br_valve_b matches 1 if score @s br_valve_c matches 0 run tellraw @s {text:'HINT: Valve C is beyond the second steam leak, close to the pressure door.',color:'green'}
execute if score @s br_stage matches 4 if score @s br_valves matches 3 run tellraw @s {text:'HINT: The pressure door is at the eastern end of the service tunnels.',color:'green'}
execute if score @s br_stage matches 5 run tellraw @s {text:'HINT: There is no puzzle left. Walk through the quiet doorway.',color:'green'}
execute if score @s br_stage matches 6 run tellraw @s {text:'HINT: Replay the case and make the opposite archive decision to see the other ending.',color:'green'}
function backrooms:v040/hint
function backrooms:v050/hint
