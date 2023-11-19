# Render the illusion zone around the west-facing source trigger, respecting 
#   stored iz boundaries.
# $say portal:portal/iz/west/render_iz inputs: $(height) $(l0) $(l1) $(l2) \
#   $(l3) $(l4) $(l5) $(l6) $(l7) $(l8) $(l9) $(l10) $(l11) $(l12) $(l13) \
#   $(l14) $(l15) $(l16) $(r0) $(r1) $(r2) $(r3) $(r4) $(r5) $(r6) $(r7) \
#   $(r8) $(r9) $(r10) $(r11) $(r12) $(r13) $(r14) $(r15) $(r16)
# Run as active source trigger entity at position.

# Clone the base level in
clone -16 -49 -16 0 -31 16 ~-16 ~-1 ~-16

# Row 0
$clone 0 -29 $(l0) 0 $(height) $(r0) ~ ~-1 ~$(r0)
$clone -1 -29 $(l1) -1 $(height) $(r1) ~-1 ~-1 ~$(r1)
$clone -2 -29 $(l2) -2 $(height) $(r2) ~-2 ~-1 ~$(r2)
$clone -3 -29 $(l3) -3 $(height) $(r3) ~-3 ~-1 ~$(r3)
$clone -4 -29 $(l4) -4 $(height) $(r4) ~-4 ~-1 ~$(r4)
$clone -5 -29 $(l5) -5 $(height) $(r5) ~-5 ~-1 ~$(r5)
$clone -6 -29 $(l6) -6 $(height) $(r6) ~-6 ~-1 ~$(r6)
$clone -7 -29 $(l7) -7 $(height) $(r7) ~-7 ~-1 ~$(r7)
$clone -8 -29 $(l8) -8 $(height) $(r8) ~-8 ~-1 ~$(r8)
$clone -9 -29 $(l9) -9 $(height) $(r9) ~-9 ~-1 ~$(r9)
$clone -10 -29 $(l10) -10 $(height) $(r10) ~-10 ~-1 ~$(r10)
$clone -11 -29 $(l11) -11 $(height) $(r11) ~-11 ~-1 ~$(r11)
$clone -12 -29 $(l12) -12 $(height) $(r12) ~-12 ~-1 ~$(r12)
$clone -13 -29 $(l13) -13 $(height) $(r13) ~-13 ~-1 ~$(r13)
$clone -14 -29 $(l14) -14 $(height) $(r14) ~-14 ~-1 ~$(r14)
$clone -15 -29 $(l15) -15 $(height) $(r15) ~-15 ~-1 ~$(r15)
$clone -16 -29 $(l16) -16 $(height) $(r16) ~-16 ~-1 ~$(r16)