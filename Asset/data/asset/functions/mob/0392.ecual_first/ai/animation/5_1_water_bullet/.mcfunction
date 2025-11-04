#> asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/
#
# ウォーターバレット アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AW.AnimationTick matches 1 run scoreboard players operation @s AW.UUID = @p[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# 近くのプレイヤーの方を向く
    scoreboard players operation $AW.Temp AW.UUID = @s AW.UUID
    execute if predicate api:global_vars/difficulty/max/2_hard as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 1..78 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 87..98 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 107..118 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 127.. as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    scoreboard players reset $AW.Temp AW.UUID

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/5_1_water_bullet/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 161 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/end

# 予告線表示
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s AW.AnimationTick matches 52 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/announce_line
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 72 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/announce_line_hard

# 弾幕発射
    execute if score @s AW.AnimationTick matches 82 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 83 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 84 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 85 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 86 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 102 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 103 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 104 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 105 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 106 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 122 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 123 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 124 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 125 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
    execute if score @s AW.AnimationTick matches 126 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon

# バリアント
    execute if score @s AW.AnimationTick matches 25 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 50 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 150 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
