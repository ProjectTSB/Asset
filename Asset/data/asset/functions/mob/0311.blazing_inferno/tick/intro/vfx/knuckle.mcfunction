#> asset:mob/0311.blazing_inferno/tick/intro/vfx/knuckle
#
# 拳を叩きつける！
#
# @within function asset:mob/0311.blazing_inferno/tick/intro/

# パーティクル
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..32]
    particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..32]
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:flame ~ ~ ~ 0.0 1 0.0 0.17 0
    particle minecraft:flame ~0.3 ~0.1 ~-0.1 0.0 1 0.0 0.15 0
    particle minecraft:flame ~-0.5 ~0.2 ~0.2 0.0 1 0.0 0.23 0
    particle minecraft:flame ~0.4 ~0.3 ~-0.7 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.7 ~0.4 ~0.5 0.0 1 0.0 0.2 0
    particle minecraft:flame ~-0.3 ~0.5 ~ 0.0 1 0.0 0.27 0
    particle minecraft:flame ~-0.7 ~0.6 ~-0.1 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.3 ~0.7 ~0.2 0.0 1 0.0 0.25 0

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
