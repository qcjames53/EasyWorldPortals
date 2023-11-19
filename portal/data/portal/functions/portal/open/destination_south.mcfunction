# Open the iz facing south. Clone the destination tiles to scratch with an appropriate offset.
# $say portal:portal/open/destination_south inputs: $(z_width)
# Run as destination trigger entity at position.

tag @s add iz_destination
$execute positioned ~ ~ ~2 positioned ~ ~ ~$(z_width) run \
    clone ~-16 ~-1 ~-16 ~16 ~17 ~16 -16 -29 -16