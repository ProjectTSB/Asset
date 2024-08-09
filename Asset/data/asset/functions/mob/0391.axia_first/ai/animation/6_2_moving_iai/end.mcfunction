#> asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/end
#
# 終了処理
#
# @within function asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/

# デバッグ用　アニメーションループ
    scoreboard players set @s AV.AnimationNum 62
    scoreboard players set @s AV.AnimationTick 0

# デバッグ用
    kill @e[tag=AV.Marker.Movement]
