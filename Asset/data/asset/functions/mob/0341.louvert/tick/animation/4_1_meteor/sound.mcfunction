#> asset:mob/0341.louvert/tick/animation/4_1_meteor/sound
#
# 溜めサウンド
#
# @within function asset:mob/0341.louvert/tick/animation/4_1_meteor/

# スコア調整
    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick *= $2 Const
    execute store result storage asset:temp 9H.Num float 0.01 run scoreboard players operation $9H.Temp 9H.AnimationTick += $100 Const

# マクロ起動
    function asset:mob/0341.louvert/tick/animation/4_1_meteor/m with storage asset:temp 9H