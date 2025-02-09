#> asset:mob/0412.tiamat/tick/event/freezing_end/effect_ring
#
# フリージングエンド
#
# @within
#   function asset:mob/0412.tiamat/tick/event/freezing_end/

# 一定間隔
    scoreboard players operation $Interval Temporary = @s BG.EventTimer
    scoreboard players operation $Interval Temporary %= $8 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval Temporary
    scoreboard players reset $Interval Temporary

# 円型ベクトルパーティクル
        execute rotated ~00 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~10 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~20 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~30 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~40 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~50 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~60 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~70 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~80 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~90 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~100 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~110 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~120 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~130 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~140 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~150 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~160 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~170 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~180 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~190 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~200 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~210 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~220 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~230 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~240 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~250 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~260 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~270 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~280 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~290 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~300 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~310 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~320 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~330 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~340 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
        execute rotated ~350 0 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0 force
