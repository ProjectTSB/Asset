#> asset:mob/0341.louvert/tick/general/9.animation_end
#
# アニメーション 汎用終了処理
#
# @within function asset:mob/0341.louvert/**

# 通常終了
    scoreboard players set @s 9H.AnimationNum 11

# スコア初期化
    scoreboard players set @s 9H.AnimationTick 0