#> asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/
#
# 斬撃砲 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 対象プレイヤー保存
    execute if score @s AV.AnimationTick matches 1 run scoreboard players operation @s AV.UUID = @p[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    scoreboard players operation $AV.Temp AV.UUID = @s AV.UUID
    execute if score @s AV.AnimationTick matches 1..16 if predicate api:global_vars/difficulty/max/normal as @a if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 1..17 if predicate api:global_vars/difficulty/min/3_blessless as @a if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/rotate
    execute if score @s AV.AnimationTick matches 31..33 as @a if score @s UserID = $AV.Temp AV.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
    scoreboard players reset $AV.Temp AV.UUID

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/9_0_zangekihou/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 66 run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/end

# 斬撃砲
    execute if score @s AV.AnimationTick matches 26 positioned ^ ^1.25 ^ run function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start
    execute if score @s AV.AnimationTick matches 37 positioned ^ ^1.25 ^ run function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start

# 予告線
    execute if score @s AV.AnimationTick matches 1 run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/announce_line

# バリアント
    execute if score @s AV.AnimationTick matches 5 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 50 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
