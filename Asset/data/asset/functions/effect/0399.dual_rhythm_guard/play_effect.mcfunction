#> asset:effect/0399.dual_rhythm_guard/play_effect
#
# @within function
#   asset:effect/0399.dual_rhythm_guard/given/
#   asset:effect/0399.dual_rhythm_guard/re-given/

# 守りの付与を淡い水色の光と澄んだ音で知らせる
    particle dust 0.35 0.8 1 0.9 ~ ~1 ~ 0.35 0.5 0.35 0 18 normal @a
    particle end_rod ~ ~1 ~ 0.3 0.45 0.3 0.02 5 normal @a
    playsound block.amethyst_block.chime player @a ~ ~ ~ 0.8 0.8
