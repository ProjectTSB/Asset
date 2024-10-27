#> asset:mob/0391.axia_first/ai/animation/100_0_opening/
#
# オープニング アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AV.AnimationTick matches 1 run scoreboard players operation @s AV.UUID = @p[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    tag @s add AV.Temp.This
    scoreboard players operation $AV.Temp AV.UUID = @s AV.UUID
    execute if score @s AV.AnimationTick matches 153..159 if predicate api:global_vars/difficulty/max/normal as @a if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 153..159 if predicate api:global_vars/difficulty/min/hard as @a if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/rotate
    execute if score @s AV.AnimationTick matches 178..185 if predicate api:global_vars/difficulty/max/normal as @a if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 178..185 if predicate api:global_vars/difficulty/min/hard as @a if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/rotate
    execute if score @s AV.AnimationTick matches 230..243 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 244..253 if predicate api:global_vars/difficulty/min/hard if entity @p[distance=..100] run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/
    scoreboard players reset $AV.Temp AV.UUID
    tag @s remove AV.Temp.This

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/14_0_opening_attack/tween {duration:1, to_frame: 0}

# アニメーション停止
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/14_0_opening_attack/pause

# アニメーション再開
    execute if score @s AV.AnimationTick matches 71 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/14_0_opening_attack/resume

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 281 run function asset:mob/0391.axia_first/ai/animation/100_0_opening/end

# クリティカルヒット 配置
    execute if score @s AV.AnimationTick matches 1 run function asset:mob/0391.axia_first/ai/projectile/critical/0.summon
    execute if score @s AV.AnimationTick matches 1 run tag @e[tag=AV.CriticalHit,distance=..64] add AV.CriticalOpening

# 衝撃波 配置
    execute if score @s AV.AnimationTick matches 81 at @e[type=marker,tag=AV.Marker.SummonPoint,distance=..100,limit=1] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0391.axia_first/ai/animation/100_0_opening/wave/1
    execute if score @s AV.AnimationTick matches 85 at @e[type=marker,tag=AV.Marker.SummonPoint,distance=..100,limit=1] run function asset:mob/0391.axia_first/ai/animation/100_0_opening/wave/2
    execute if score @s AV.AnimationTick matches 89 at @e[type=marker,tag=AV.Marker.SummonPoint,distance=..100,limit=1] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0391.axia_first/ai/animation/100_0_opening/wave/3
    execute if score @s AV.AnimationTick matches 105 at @e[type=marker,tag=AV.Marker.SummonPoint,distance=..100,limit=1] run function asset:mob/0391.axia_first/ai/animation/100_0_opening/wave/4
    execute if score @s AV.AnimationTick matches 109 at @e[type=marker,tag=AV.Marker.SummonPoint,distance=..100,limit=1] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0391.axia_first/ai/animation/100_0_opening/wave/5

# 斬撃砲
    execute positioned ^ ^1.25 ^ if score @s AV.AnimationTick matches 168 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start
    execute positioned ^ ^1.25 ^ if score @s AV.AnimationTick matches 194 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start

# 予告線
    execute if score @s AV.AnimationTick matches 153 run function asset:mob/0391.axia_first/ai/animation/100_0_opening/announce_line
    execute if score @s AV.AnimationTick matches 179 run function asset:mob/0391.axia_first/ai/animation/100_0_opening/announce_line

# TP
    execute if score @s AV.AnimationTick matches 232 at @s run tp @s ^ ^0.2 ^ ~ ~
    execute if score @s AV.AnimationTick matches 233 at @s run tp @s ^ ^0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 234 at @s run tp @s ^ ^0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 235 at @s run tp @s ^ ^0.5 ^ ~ ~
    execute if score @s AV.AnimationTick matches 236 at @s run tp @s ^ ^0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 237 at @s run tp @s ^ ^0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 238 at @s run tp @s ^ ^0.2 ^ ~ ~
    execute if score @s AV.AnimationTick matches 239 at @s run tp @s ^ ^0.1 ^ ~ ~

    execute if score @s AV.AnimationTick matches 246 at @s run tp @s ^ ^-0.1 ^ ~ ~
    execute if score @s AV.AnimationTick matches 247 at @s run tp @s ^ ^-0.2 ^ ~ ~
    execute if score @s AV.AnimationTick matches 248 at @s run tp @s ^ ^-0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 249 at @s run tp @s ^ ^-0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 250 at @s run tp @s ^ ^-0.5 ^ ~ ~
    execute if score @s AV.AnimationTick matches 251 at @s run tp @s ^ ^-0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 252 at @s run tp @s ^ ^-0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 253 at @s run tp @s ^ ^-0.2 ^ ~ ~

# 中央ダメージエリア
    execute if score @s AV.AnimationTick matches 232 at @s run function asset:mob/0391.axia_first/ai/projectile/critical/0.summon

# 衝撃波召喚
    execute if score @s AV.AnimationTick matches 253 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/1
    execute if score @s AV.AnimationTick matches 256 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/2
    execute if score @s AV.AnimationTick matches 259 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/3
    execute if score @s AV.AnimationTick matches 262 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/4

# 自機狙い
    tag @s add AV.Temp.This
    execute if score @s AV.AnimationTick matches 253 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=4] at @s run function asset:mob/0391.axia_first/ai/projectile/sword/0.summon
    execute if score @s AV.AnimationTick matches 268 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=4] at @s run function asset:mob/0391.axia_first/ai/projectile/sword/0.summon
    execute if score @s AV.AnimationTick matches 281 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=4] at @s run function asset:mob/0391.axia_first/ai/projectile/sword/0.summon

# ランダム撃ち
    execute if score @s AV.AnimationTick matches 256 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 256 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 253 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 253 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 259 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 259 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 262 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 262 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 265 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 265 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 268 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 268 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    tag @s remove AV.Temp.This
