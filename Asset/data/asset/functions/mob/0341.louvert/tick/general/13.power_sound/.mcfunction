#> asset:mob/0341.louvert/tick/general/13.power_sound/
#
# 溜めサウンド（切り出した）
#
# @within function asset:mob/0341.louvert/**

# スコア調整
    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick *= $2 Const
    execute store result storage asset:temp 9H.Num float 0.01 run scoreboard players operation $9H.Temp 9H.AnimationTick += $100 Const

# マクロ起動
    function asset:mob/0341.louvert/tick/general/13.power_sound/m with storage asset:temp 9H

# リセット
    scoreboard players reset $9H.Temp 9H.AnimationTick
    data remove storage asset:temp 9H
