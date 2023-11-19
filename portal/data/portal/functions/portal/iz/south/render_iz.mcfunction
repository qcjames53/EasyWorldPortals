# Render the illusion zone around the south-facing source trigger, respecting 
#   stored iz boundaries.
# $say portal:portal/iz/south/render_iz inputs: $(height) $(l0) $(l1) $(l2) \
#   $(l3) $(l4) $(l5) $(l6) $(l7) $(l8) $(l9) $(l10) $(l11) $(l12) $(l13) \
#   $(l14) $(l15) $(l16) $(r0) $(r1) $(r2) $(r3) $(r4) $(r5) $(r6) $(r7) $(r8) \
#   $(r9) $(r10) $(r11) $(r12) $(r13) $(r14) $(r15) $(r16)
# Run as active source trigger entity at position.

# Clone the base level in
clone -16 -49 0 16 -31 16 ~-16 ~-1 ~

# Row 0
$clone $(r0) -29 0 $(l0) $(height) 0 ~$(r0) ~-1 ~
$clone $(r1) -29 1 $(l1) $(height) 1 ~$(r1) ~-1 ~1
$clone $(r2) -29 2 $(l2) $(height) 2 ~$(r2) ~-1 ~2
$clone $(r3) -29 3 $(l3) $(height) 3 ~$(r3) ~-1 ~3
$clone $(r4) -29 4 $(l4) $(height) 4 ~$(r4) ~-1 ~4
$clone $(r5) -29 5 $(l5) $(height) 5 ~$(r5) ~-1 ~5
$clone $(r6) -29 6 $(l6) $(height) 6 ~$(r6) ~-1 ~6
$clone $(r7) -29 7 $(l7) $(height) 7 ~$(r7) ~-1 ~7
$clone $(r8) -29 8 $(l8) $(height) 8 ~$(r8) ~-1 ~8
$clone $(r9) -29 9 $(l9) $(height) 9 ~$(r9) ~-1 ~9
$clone $(r10) -29 10 $(l10) $(height) 10 ~$(r10) ~-1 ~10
$clone $(r11) -29 11 $(l11) $(height) 11 ~$(r11) ~-1 ~11
$clone $(r12) -29 12 $(l12) $(height) 12 ~$(r12) ~-1 ~12
$clone $(r13) -29 13 $(l13) $(height) 13 ~$(r13) ~-1 ~13
$clone $(r14) -29 14 $(l14) $(height) 14 ~$(r14) ~-1 ~14
$clone $(r15) -29 15 $(l15) $(height) 15 ~$(r15) ~-1 ~15
$clone $(r16) -29 16 $(l16) $(height) 16 ~$(r16) ~-1 ~16