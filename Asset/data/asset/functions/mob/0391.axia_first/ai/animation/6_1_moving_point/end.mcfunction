#> asset:mob/0391.axia_first/ai/animation/6_1_moving_point/end
#
# 終了処理
#
# @within function asset:mob/0391.axia_first/ai/animation/6_1_moving_point/

# デバッグ用　アニメーションループ
    scoreboard players set @s AV.AnimationNum 61
    scoreboard players set @s AV.AnimationTick 0

# デバッグ用
    kill @e[tag=AV.Marker.Movement]
    data remove storage asset:context this.MoveDistance
    scoreboard players reset @s AV.UUID
