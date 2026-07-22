scoreboard objectives add br_setup dummy
scoreboard objectives add br_radio dummy
scoreboard objectives add br_clues dummy
scoreboard objectives add br_badge dummy
scoreboard objectives add br_camera dummy
scoreboard objectives add br_drawing dummy
scoreboard objectives add br_breakers dummy
scoreboard objectives add br_breaker_a dummy
scoreboard objectives add br_breaker_b dummy
scoreboard objectives add br_mannequin_awake dummy
scoreboard objectives add br_pipe_spawned dummy
scoreboard objectives add br_v040_rng dummy
scoreboard objectives add br_event_cd dummy
execute unless score #world br_setup matches 1 run function backrooms:v040/world/setup
