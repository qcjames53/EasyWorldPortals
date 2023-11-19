# Open the iz without a direction set on the original open command. Error 
#   handling.
# No inputs.
# Run as destination trigger entity at position.

tellraw @a[tag=portal_log] {\
    "color":"red", \
    "text":"Tried to open iz with none direction set."\
}