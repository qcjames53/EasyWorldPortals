# Render the iz without a direction set. Error handling script.
# No inputs
# Run as active source trigger entity at position.

tellraw @a[tag=portal_log] {\
    "color":"red",\
    "text":"IZ render called with none direction set."\
}