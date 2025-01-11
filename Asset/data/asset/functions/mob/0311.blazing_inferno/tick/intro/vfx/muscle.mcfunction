#> asset:mob/0311.blazing_inferno/tick/intro/vfx/muscle
#
# 背景が大爆発
#
# @within function asset:mob/0311.blazing_inferno/tick/intro/

# パーティクル
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:lava ~ ~ ~ 1 1 1 0 50 force @a[distance=..32]
    particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.2 50 force @a[distance=..32]

# サウンド
    execute at @s run playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.0
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
