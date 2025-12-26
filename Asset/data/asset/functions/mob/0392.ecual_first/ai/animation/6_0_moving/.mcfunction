#> asset:mob/0392.ecual_first/ai/animation/6_0_moving/
#
# 移動アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AW.AnimationTick matches 1 run scoreboard players operation @s AW.UUID = @r[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# プレイヤーの方を向く
# 移動中は対象プレイヤーの方を向く
    scoreboard players operation $AW.Temp AW.UUID = @s AW.UUID
    execute if score @s AW.AnimationTick matches 1..30 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    execute if score @s AW.AnimationTick matches 31..56 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate
    scoreboard players reset $AW.Temp AW.UUID

# 移動
    # TP
        execute if score @s AW.AnimationTick matches 13..41 at @s positioned ^ ^ ^0.5 run function asset:mob/0392.ecual_first/ai/general/1.teleport
        execute if score @s AW.AnimationTick matches 42 at @s positioned ^ ^ ^0.4 run function asset:mob/0392.ecual_first/ai/general/1.teleport
        execute if score @s AW.AnimationTick matches 43 at @s positioned ^ ^ ^0.3 run function asset:mob/0392.ecual_first/ai/general/1.teleport
        execute if score @s AW.AnimationTick matches 44 at @s positioned ^ ^ ^0.2 run function asset:mob/0392.ecual_first/ai/general/1.teleport
        execute if score @s AW.AnimationTick matches 45 at @s positioned ^ ^ ^0.1 run function asset:mob/0392.ecual_first/ai/general/1.teleport

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/6_0_moving/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 56 run function asset:mob/0392.ecual_first/ai/animation/6_0_moving/end

# サウンド・VFX
    execute if score @s AW.AnimationTick matches 13 run function asset:mob/0392.ecual_first/ai/animation/6_0_moving/sound
    execute if score @s AW.AnimationTick matches 13 positioned ^ ^0.5 ^-0.5 run function asset:mob/0392.ecual_first/ai/animation/6_0_moving/vfx

# バリアント
    execute if score @s AW.AnimationTick matches 40 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 50 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
