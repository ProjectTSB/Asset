#> asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/
#
# 雷轟斬
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    tag @s add AZ.Temp.This
    execute if score @s AZ.AnimationTick matches 1..45 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    tag @s remove AZ.Temp.This

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/8_0_sw_raigou/play

# VFX + ダメージ処理
    execute if score @s AZ.AnimationTick matches 13 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/damage
    execute if score @s AZ.AnimationTick matches 19 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/damage
    execute if score @s AZ.AnimationTick matches 25 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/damage
    execute if score @s AZ.AnimationTick matches 31 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/damage

# 反射サンダー発射
    execute if score @s AZ.AnimationTick matches 50 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/

# 終了処理
    execute if score @s AZ.AnimationTick matches 80 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/end
