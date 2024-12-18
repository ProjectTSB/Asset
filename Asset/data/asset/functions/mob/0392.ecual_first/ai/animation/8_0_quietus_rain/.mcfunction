#> asset:mob/0392.ecual_first/ai/animation/8_0_quietus_rain/
#
# クワイタスレイン アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/8_0_quietus_rain/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 151 run function asset:mob/0392.ecual_first/ai/animation/8_0_quietus_rain/end

# クワイタスレイン 発動
    execute if score @s AW.AnimationTick matches 31 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/0.summon

# バリアント
    execute if score @s AW.AnimationTick matches 10 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 20 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 140 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
