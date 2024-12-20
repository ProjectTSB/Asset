#> asset:mob/0341.louvert/tick/animation/3_1_slash_start/sound_set
#
# サウンドの値を決める
#
# @within function asset:mob/0341.louvert/tick/animation/3_1_slash_start/

# スコア調整
    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick *= $1 Const
    execute store result storage asset:temp 9H.Num float 0.01 run scoreboard players operation $9H.Temp 9H.AnimationTick += $100 Const

# マクロ起動
    function asset:mob/0341.louvert/tick/animation/3_1_slash_start/m with storage asset:temp 9H

# リセット
    data remove storage asset:temp 9H