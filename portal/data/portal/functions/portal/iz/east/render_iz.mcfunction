# Render the illusion zone around the east-facing source trigger, respecting 
#   stored iz boundaries.
# $say portal:portal/iz/east/render_iz inputs: $(height) $(l0) $(l1) $(l2) \
#   $(l3) $(l4) $(l5) $(l6) $(l7) $(l8) $(l9) $(l10) $(l11) $(l12) $(l13) \
#   $(l14) $(l15) $(l16) $(r0) $(r1) $(r2) $(r3) $(r4) $(r5) $(r6) $(r7) $(r8) \
#   $(r9) $(r10) $(r11) $(r12) $(r13) $(r14) $(r15) $(r16)
# Run as active source trigger entity at position.

# Clone the base level in
clone 0 -49 -16 16 -31 16 ~ ~-1 ~-16

# Do not clone if l is 16 or r is -16
$execute unless score #$(l0) v matches 16 unless score #$(r0) v matches -16 \
    run clone 0 -29 $(l0) 0 $(height) $(r0) ~ ~-1 ~$(l0)
$execute unless score #$(l1) v matches 16 unless score #$(r1) v matches -16 \
    run clone 1 -29 $(l1) 1 $(height) $(r1) ~1 ~-1 ~$(l1)
$execute unless score #$(l2) v matches 16 unless score #$(r2) v matches -16 \
    run clone 2 -29 $(l2) 2 $(height) $(r2) ~2 ~-1 ~$(l2)
$execute unless score #$(l3) v matches 16 unless score #$(r3) v matches -16 \
    run clone 3 -29 $(l3) 3 $(height) $(r3) ~3 ~-1 ~$(l3)
$execute unless score #$(l4) v matches 16 unless score #$(r4) v matches -16 \
    run clone 4 -29 $(l4) 4 $(height) $(r4) ~4 ~-1 ~$(l4)
$execute unless score #$(l5) v matches 16 unless score #$(r5) v matches -16 \
    run clone 5 -29 $(l5) 5 $(height) $(r5) ~5 ~-1 ~$(l5)
$execute unless score #$(l6) v matches 16 unless score #$(r6) v matches -16 \
    run clone 6 -29 $(l6) 6 $(height) $(r6) ~6 ~-1 ~$(l6)
$execute unless score #$(l7) v matches 16 unless score #$(r7) v matches -16 \
    run clone 7 -29 $(l7) 7 $(height) $(r7) ~7 ~-1 ~$(l7)
$execute unless score #$(l8) v matches 16 unless score #$(r8) v matches -16 \
    run clone 8 -29 $(l8) 8 $(height) $(r8) ~8 ~-1 ~$(l8)
$execute unless score #$(l9) v matches 16 unless score #$(r9) v matches -16 \
    run clone 9 -29 $(l9) 9 $(height) $(r9) ~9 ~-1 ~$(l9)
$execute unless score #$(l10) v matches 16 unless score #$(r10) v matches -16 \
    run clone 10 -29 $(l10) 10 $(height) $(r10) ~10 ~-1 ~$(l10)
$execute unless score #$(l11) v matches 16 unless score #$(r11) v matches -16 \
    run clone 11 -29 $(l11) 11 $(height) $(r11) ~11 ~-1 ~$(l11)
$execute unless score #$(l12) v matches 16 unless score #$(r12) v matches -16 \
    run clone 12 -29 $(l12) 12 $(height) $(r12) ~12 ~-1 ~$(l12)
$execute unless score #$(l13) v matches 16 unless score #$(r13) v matches -16 \
    run clone 13 -29 $(l13) 13 $(height) $(r13) ~13 ~-1 ~$(l13)
$execute unless score #$(l14) v matches 16 unless score #$(r14) v matches -16 \
    run clone 14 -29 $(l14) 14 $(height) $(r14) ~14 ~-1 ~$(l14)
$execute unless score #$(l15) v matches 16 unless score #$(r15) v matches -16 \
    run clone 15 -29 $(l15) 15 $(height) $(r15) ~15 ~-1 ~$(l15)
$execute unless score #$(l16) v matches 16 unless score #$(r16) v matches -16 \
    run clone 16 -29 $(l16) 16 $(height) $(r16) ~16 ~-1 ~$(l16)