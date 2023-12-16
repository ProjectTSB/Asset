#> asset:mob/0341.louvert/tick/animation/4_1_meteor/sound
#
# 溜めサウンド
#
# @within function
#   asset:mob/0341.louvert/tick/animation/4_1_meteor/
#   asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/
#   asset:mob/0341.louvert/tick/animation/7_1_soul_cast/
#   asset:mob/0341.louvert/tick/animation/9_1_triple_slash_start/

# スコア調整
    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick *= $2 Const
    execute store result storage asset:temp 9H.Num float 0.01 run scoreboard players operation $9H.Temp 9H.AnimationTick += $100 Const

# マクロ起動
    function asset:mob/0341.louvert/tick/animation/4_1_meteor/m with storage asset:temp 9H

# リセット
    scoreboard players reset $9H.Temp 9H.AnimationTick
    data remove storage asset:temp 9H