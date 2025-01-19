#> asset:mob/0392.ecual_first/ai/animation/99_0_damaged_1/
#
# 被弾アニメーション1
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 後ろにのけぞる
    execute if score @s AW.AnimationTick matches 1 positioned ^ ^ ^-1 run function asset:mob/0392.ecual_first/ai/general/1.teleport

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/11_0_damage_1/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 21 run function asset:mob/0392.ecual_first/ai/animation/99_0_damaged_1/end

# バリアント
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/yarare/apply
    execute if score @s AW.AnimationTick matches 15 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
