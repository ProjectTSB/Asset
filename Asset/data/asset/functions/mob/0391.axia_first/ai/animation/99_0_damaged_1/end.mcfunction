#> asset:mob/0391.axia_first/ai/animation/99_0_damaged_1/end
#
# 終了処理
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/99_0_damaged_1/
#   asset:mob/0391.axia_first/ai/animation/99_1_damaged_2/

# 待機 アニメーションに戻る
    scoreboard players set @s AV.AnimationNum 10
    scoreboard players set @s AV.AnimationTick 0
