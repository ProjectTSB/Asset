#> asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/end
#
# 終了処理
#
# @within function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/

# デバッグ用　アニメーションループ
    scoreboard players set @s AV.AnimationNum 60
    scoreboard players set @s AV.AnimationTick 0

# デバッグ用
    scoreboard players reset @s AV.UUID
