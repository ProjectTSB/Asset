#> asset:mob/0391.axia_first/ai/animation/6_1_moving_point/
#
# 移動アニメーション（特定地点まで）
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 移動地点指定
    execute if score @s AV.AnimationTick matches 1 run function asset:mob/0391.axia_first/ai/animation/6_1_moving_point/movement_point/add_point

# 目標地点の方を向く
# 最後はプレイヤーの方を向く
    tag @s add AV.Temp.This
    execute if score @s AV.AnimationTick matches 1..30 as @e[type=marker,tag=AV.Marker.Movement,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 31..36 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate

# 移動
    # 別のstorageに移す
        data modify storage asset:temp AV.Temp.X set from storage asset:context this.MoveDistance[0]
        data modify storage asset:temp AV.Temp.Z set from storage asset:context this.MoveDistance[2]
    
    # マクロでTP
        execute if score @s AV.AnimationTick matches 6..30 run function asset:mob/0391.axia_first/ai/animation/6_1_moving_point/move.m with storage asset:temp AV.Temp

    # リセット
        data remove storage asset:temp AV.Temp

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/6_0_moving_forward/tween {duration:1, to_frame: 0}

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 36 run function asset:mob/0391.axia_first/ai/animation/6_1_moving_point/end

# サウンド・VFX
    execute if score @s AV.AnimationTick matches 6 run function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/sound
    execute if score @s AV.AnimationTick matches 6 positioned ^ ^0.5 ^-0.5 run function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/vfx
