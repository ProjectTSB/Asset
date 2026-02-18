#> asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/
#
# 居合い切り移動 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AV.AnimationTick matches 1 run scoreboard players operation @s AV.UUID = @r[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# 近くのプレイヤーの方を向く
    scoreboard players operation $AV.Temp AV.UUID = @s AV.UUID
    execute if score @s AV.AnimationTick matches 1..45 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 57..66 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/7_0_moving_iai/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 66 run function asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/end

# 斬撃エフェクト
    execute if score @s AV.AnimationTick matches 47 positioned ^ ^0.5 ^ run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_summon/3

# 斬撃サウンド
    execute if score @s AV.AnimationTick matches 47 run function asset:mob/0391.axia_first/ai/general/5.slash_sound

# 移動
    # TP
        execute if score @s AV.AnimationTick matches 31..41 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^ ^2 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 42 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^ ^1 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 43 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^ ^0.5 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 44 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^ ^0.25 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 45 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^ ^0.1 run function asset:mob/0391.axia_first/ai/general/1.teleport

# ダメージ
    execute if score @s AV.AnimationTick matches 48 run function asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/damage

# バリアント
    execute if score @s AV.AnimationTick matches 10 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mabataki/apply
    execute if score @s AV.AnimationTick matches 20 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 60 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
