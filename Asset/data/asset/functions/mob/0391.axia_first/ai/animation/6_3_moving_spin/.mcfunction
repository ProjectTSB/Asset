#> asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/
#
# スピン移動 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AV.AnimationTick matches 1 run scoreboard players operation @s AV.UUID = @p[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# プレイヤーの方を向く
# 移動中は対象プレイヤーの方を向く
    scoreboard players operation $AV.Temp AV.UUID = @s AV.UUID
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
    scoreboard players reset $AV.Temp AV.UUID

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/8_0_moving_spin/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 83 run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/end

# 移動
    # TP
        execute if score @s AV.AnimationTick matches 20..70 at @s positioned ^ ^ ^0.3 run function asset:mob/0391.axia_first/ai/general/1.teleport

# ダメージ&サウンド
    execute if score @s AV.AnimationTick matches 20 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 25 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 30 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 35 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 40 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 45 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 50 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 55 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 60 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 65 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
    execute if score @s AV.AnimationTick matches 70 at @s run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage

# バリアント
    execute if score @s AV.AnimationTick matches 10 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 75 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
