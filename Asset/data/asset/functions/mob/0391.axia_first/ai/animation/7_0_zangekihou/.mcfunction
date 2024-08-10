#> asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/
#
# 斬撃砲 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    #ToDo ハードのみ41~50間は偏差処理を入れつつ向く
    tag @s add AV.Temp.This
    execute if score @s AV.AnimationTick matches 1..16 if predicate api:global_vars/difficulty/max/normal as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 1..16 if predicate api:global_vars/difficulty/min/hard if entity @p[distance=..100] run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/
    execute if score @s AV.AnimationTick matches 31..33 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    tag @s remove AV.Temp.This

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/9_0_zangekihou/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 56 run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/end

# 斬撃砲
    execute positioned ^ ^1.25 ^ if score @s AV.AnimationTick matches 26 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start
    execute positioned ^ ^1.25 ^ if score @s AV.AnimationTick matches 37 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start
