#> asset:mob/0391.axia_first/ai/animation/99_1_damaged_2/
#
# 被弾アニメーション2
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 後ろにのけぞる
    execute if score @s AV.AnimationTick matches 1 positioned ^ ^ ^-1 run function asset:mob/0391.axia_first/ai/general/1.teleport

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/13_1_damage_2/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 21 run function asset:mob/0391.axia_first/ai/animation/99_0_damaged_1/end

# バリアント
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/yarare/apply
    execute if score @s AV.AnimationTick matches 15 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
