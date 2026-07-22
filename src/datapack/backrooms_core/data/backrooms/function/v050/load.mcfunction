
scoreboard objectives add br_v050_setup dummy
scoreboard objectives add br_v050_rng dummy
scoreboard objectives add br_tapes dummy
scoreboard objectives add br_tape_a dummy
scoreboard objectives add br_tape_b dummy
scoreboard objectives add br_tape_c dummy
scoreboard objectives add br_tape_d dummy
scoreboard objectives add br_tape_e dummy
scoreboard objectives add br_anomalies dummy
scoreboard objectives add br_anom_a dummy
scoreboard objectives add br_anom_b dummy
scoreboard objectives add br_anom_c dummy
scoreboard objectives add br_medkit dummy
scoreboard objectives add br_watcher_timer dummy
scoreboard objectives add br_false_timer dummy
scoreboard objectives add br_shadow_timer dummy
execute unless score #world br_v050_setup matches 1 run function backrooms:v050/world/setup
