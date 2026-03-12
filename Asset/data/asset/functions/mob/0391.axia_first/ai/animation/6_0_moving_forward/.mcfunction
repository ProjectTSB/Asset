#> asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/
#
# 移動アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AV.AnimationTick matches 1 run scoreboard players operation @s AV.UUID = @r[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# プレイヤーの方を向く
# 移動中は対象プレイヤーの方を向く
    scoreboard players operation $AV.Temp AV.UUID = @s AV.UUID
    execute if score @s AV.AnimationTick matches 1..30 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 31..36 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    scoreboard players reset $AV.Temp AV.UUID

# 移動
    # TP
        execute if score @s AV.AnimationTick matches 6..26 at @s positioned ^ ^ ^0.6 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 27 at @s positioned ^ ^ ^0.5 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 28 at @s positioned ^ ^ ^0.4 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 29 at @s positioned ^ ^ ^0.2 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 30 at @s positioned ^ ^ ^0.1 run function asset:mob/0391.axia_first/ai/general/1.teleport

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/6_0_moving_forward/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 36 run function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/end

# サウンド・VFX
    execute if score @s AV.AnimationTick matches 6 run function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/sound
    execute if score @s AV.AnimationTick matches 6 positioned ^ ^0.5 ^-0.5 run function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/vfx
