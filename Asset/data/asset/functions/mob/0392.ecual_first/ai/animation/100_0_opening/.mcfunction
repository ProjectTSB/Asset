#> asset:mob/0392.ecual_first/ai/animation/100_0_opening/
#
# オープニング アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AW.AnimationTick matches 211 run scoreboard players operation @s AW.UUID = @p[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    scoreboard players operation $AW.Temp AW.UUID = @s AW.UUID
    execute if score @s AW.AnimationTick matches 211..261 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    execute if score @s AW.AnimationTick matches 268..281 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    execute if score @s AW.AnimationTick matches 284..301 as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    execute if score @s AW.AnimationTick matches 308.. as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0392.ecual_first/ai/general/2.rotate
    scoreboard players reset $AW.Temp AW.UUID

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/12_0_opening_attack/play

# アニメーション停止
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/12_0_opening_attack/pause

# アニメーション再開
    execute if score @s AW.AnimationTick matches 71 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/12_0_opening_attack/resume

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 356 run function asset:mob/0392.ecual_first/ai/animation/100_0_opening/end

# クリティカル登場
    execute if score @s AW.AnimationTick matches 1 run function asset:mob/0392.ecual_first/ai/projectile/critical/0.summon

# 両手からハイドロ召喚
    execute if score @s AW.AnimationTick matches 97 run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/1

# プレイヤー追従ハイドロ
    execute if score @s AW.AnimationTick matches 122 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
    execute if score @s AW.AnimationTick matches 147 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 157 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 167 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2

# クワイタスレイン
    execute if score @s AW.AnimationTick matches 151 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/0.summon

# 予告線表示
    execute if score @s AW.AnimationTick matches 237 run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/announce_line

# レーザー発射
    execute if score @s AW.AnimationTick matches 267 positioned ^ ^1.25 ^ run function asset:mob/0392.ecual_first/ai/projectile/shining_ray/1.start
    execute if score @s AW.AnimationTick matches 287 positioned ^ ^1.25 ^ run function asset:mob/0392.ecual_first/ai/projectile/shining_ray/1.start
    execute if score @s AW.AnimationTick matches 307 positioned ^ ^1.25 ^ run function asset:mob/0392.ecual_first/ai/projectile/shining_ray/1.start

# バリアント
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 55 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
    execute if score @s AW.AnimationTick matches 155 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 265 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
