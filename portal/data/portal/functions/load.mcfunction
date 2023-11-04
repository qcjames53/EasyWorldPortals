# Called on load/reload. Sets up all neccesary scoreboard values.
# No inputs
# Run as server

scoreboard objectives add v dummy
scoreboard objectives add trigger_id dummy

scoreboard players set #-1 v -1

function portal:portal/close_all