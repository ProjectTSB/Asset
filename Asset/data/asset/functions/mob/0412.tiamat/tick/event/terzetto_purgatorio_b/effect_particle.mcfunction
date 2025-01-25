#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/effect_particle
#
# テルツェット・プルガトリオ
#
# @within
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/

# 一定間隔
    scoreboard players operation $Interval Temporary = @s BG.EventTimer
    scoreboard players operation $Interval Temporary %= $8 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval Temporary
    scoreboard players reset $Interval Temporary

# 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~10 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~20 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~30 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~40 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~50 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~60 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~70 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~80 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~90 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~100 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~110 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~120 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~130 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~140 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~150 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~160 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~170 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~180 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~190 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~200 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~210 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~220 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~230 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~240 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~250 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~260 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~270 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~280 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~290 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~300 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~310 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~320 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~330 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~340 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
        execute rotated ~350 0 positioned ^ ^-0.3 ^-30 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000012 0 force
