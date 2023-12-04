# Render the illusion zone around the north-facing source trigger, respecting 
#   stored iz boundaries.
# $say portal:portal/iz/north/render_iz inputs: $(height) $(l0) $(l1) $(l2) \ 
#   $(l3) $(l4) $(l5) $(l6) $(l7) $(l8) $(l9) $(l10) $(l11) $(l12) $(l13) \ 
#   $(l14) $(l15) $(l16) $(r0) $(r1) $(r2) $(r3) $(r4) $(r5) $(r6) $(r7) $(r8) \
#   $(r9) $(r10) $(r11) $(r12) $(r13) $(r14) $(r15) $(r16)
# Run as active source trigger entity at position.

# Clone the base level in
clone -16 -49 -16 16 -31 0 ~-16 ~-1 ~-16

# Do not clone if l is -16 or r is 16
$execute unless score #$(l0) v matches -16 unless score #$(r0) v matches 16 \
    run clone $(r0) -29 0 $(l0) $(height) 0 ~$(r0) ~-1 ~
$execute unless score #$(l1) v matches -16 unless score #$(r1) v matches 16 \
    run clone $(r1) -29 -1 $(l1) $(height) -1 ~$(r1) ~-1 ~-1
$execute unless score #$(l2) v matches -16 unless score #$(r2) v matches 16 \
    run clone $(r2) -29 -2 $(l2) $(height) -2 ~$(r2) ~-1 ~-2
$execute unless score #$(l3) v matches -16 unless score #$(r3) v matches 16 \
    run clone $(r3) -29 -3 $(l3) $(height) -3 ~$(r3) ~-1 ~-3
$execute unless score #$(l4) v matches -16 unless score #$(r4) v matches 16 \
    run clone $(r4) -29 -4 $(l4) $(height) -4 ~$(r4) ~-1 ~-4
$execute unless score #$(l5) v matches -16 unless score #$(r5) v matches 16 \
    run clone $(r5) -29 -5 $(l5) $(height) -5 ~$(r5) ~-1 ~-5
$execute unless score #$(l6) v matches -16 unless score #$(r6) v matches 16 \
    run clone $(r6) -29 -6 $(l6) $(height) -6 ~$(r6) ~-1 ~-6
$execute unless score #$(l7) v matches -16 unless score #$(r7) v matches 16 \
    run clone $(r7) -29 -7 $(l7) $(height) -7 ~$(r7) ~-1 ~-7
$execute unless score #$(l8) v matches -16 unless score #$(r8) v matches 16 \
    run clone $(r8) -29 -8 $(l8) $(height) -8 ~$(r8) ~-1 ~-8
$execute unless score #$(l9) v matches -16 unless score #$(r9) v matches 16 \
    run clone $(r9) -29 -9 $(l9) $(height) -9 ~$(r9) ~-1 ~-9
$execute unless score #$(l10) v matches -16 unless score #$(r10) v matches 16 \
    run clone $(r10) -29 -10 $(l10) $(height) -10 ~$(r10) ~-1 ~-10
$execute unless score #$(l11) v matches -16 unless score #$(r11) v matches 16 \
    run clone $(r11) -29 -11 $(l11) $(height) -11 ~$(r11) ~-1 ~-11
$execute unless score #$(l12) v matches -16 unless score #$(r12) v matches 16 \
    run clone $(r12) -29 -12 $(l12) $(height) -12 ~$(r12) ~-1 ~-12
$execute unless score #$(l13) v matches -16 unless score #$(r13) v matches 16 \
    run clone $(r13) -29 -13 $(l13) $(height) -13 ~$(r13) ~-1 ~-13
$execute unless score #$(l14) v matches -16 unless score #$(r14) v matches 16 \
    run clone $(r14) -29 -14 $(l14) $(height) -14 ~$(r14) ~-1 ~-14
$execute unless score #$(l15) v matches -16 unless score #$(r15) v matches 16 \
    run clone $(r15) -29 -15 $(l15) $(height) -15 ~$(r15) ~-1 ~-15
$execute unless score #$(l16) v matches -16 unless score #$(r16) v matches 16 \
    run clone $(r16) -29 -16 $(l16) $(height) -16 ~$(r16) ~-1 ~-16