#> asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/
#
# シャイニングレイ
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AW.AnimationTick matches 1 run scoreboard players operation @s AW.UUID = @p[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# 近くのプレイヤーの方を向く
    scoreboard players operation $AW.Temp AW.UUID = @s AW.UUID
    execute if predicate api:global_vars/difficulty/max/normal as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 1..77 as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 83..97 as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 103..117 as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 123.. as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    scoreboard players reset $AW.Temp AW.UUID

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/5_0_shining_ray/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 161 run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/end

# 予告線表示
    execute if predicate api:global_vars/difficulty/max/normal if score @s AW.AnimationTick matches 52 run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/announce_line
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 72 run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/announce_line_hard

# レーザー発射
    execute if score @s AW.AnimationTick matches 82 positioned ^ ^1.25 ^ run function asset:mob/0392.ecual_first/ai/projectile/shining_ray/1.start
    execute if score @s AW.AnimationTick matches 102 positioned ^ ^1.25 ^ run function asset:mob/0392.ecual_first/ai/projectile/shining_ray/1.start
    execute if score @s AW.AnimationTick matches 122 positioned ^ ^1.25 ^ run function asset:mob/0392.ecual_first/ai/projectile/shining_ray/1.start

# バリアント
    execute if score @s AW.AnimationTick matches 25 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 50 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 150 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
