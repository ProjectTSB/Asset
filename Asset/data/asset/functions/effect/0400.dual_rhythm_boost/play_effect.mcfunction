#> asset:effect/0400.dual_rhythm_boost/play_effect
#
# @within function
#   asset:effect/0400.dual_rhythm_boost/given/
#   asset:effect/0400.dual_rhythm_boost/re-given/

# 攻撃強化の付与を金色の光と高い音で知らせる
    particle dust 1 0.75 0.2 1 ~ ~1 ~ 0.35 0.5 0.35 0 18 normal @a
    particle crit ~ ~1 ~ 0.3 0.4 0.3 0.15 8 normal @a
    playsound block.note_block.chime player @a ~ ~ ~ 0.8 1.5
