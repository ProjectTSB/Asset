#> asset:mob/0341.louvert/tick/animation/3_1_slash_start/end
#
# アニメーション 終了処理
#
# @within function asset:mob/0341.louvert/tick/animation/3_1_slash_start/

# 通常終了
    scoreboard players set @s 9H.AnimationNum 32

# スコア初期化
    scoreboard players set @s 9H.AnimationTick 0