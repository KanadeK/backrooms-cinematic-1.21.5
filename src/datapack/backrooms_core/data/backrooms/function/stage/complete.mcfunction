
execute if score @s br_choice matches 1 if score @s br_clues matches 3 run function backrooms:v040/ending/return_address
execute if score @s br_choice matches 1 if score @s br_clues matches ..2 run function backrooms:ending/signal
execute if score @s br_choice matches 2 if score @s br_tapes matches 5 if score @s br_anomalies matches 3 run function backrooms:v050/ending/surveyors_loop
execute if score @s br_choice matches 2 unless score @s br_tapes matches 5 run function backrooms:ending/severance
execute if score @s br_choice matches 2 if score @s br_tapes matches 5 unless score @s br_anomalies matches 3 run function backrooms:ending/severance
