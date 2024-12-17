#> asset:mob/0311.blazing_inferno/tick/intro/knuckle_vfx
#
# 拳を叩きつける！
#
# @within function asset:mob/0311.blazing_inferno/tick/intro/

# パーティクル
    particle large_smoke ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..32]
    particle lava ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:flame ~ ~ ~ 0 1 0 0.2 0
    particle minecraft:flame ~0.1 ~0.1 ~ 0 1 0 0.3 0
    particle minecraft:flame ~0.05 ~0.2 ~0.2 0 1 0 0.4 0
    particle minecraft:flame ~-0.05 ~0.3 ~-0.05 0 1 0 0.5 0
    particle minecraft:flame ~-0.1 ~0.3 ~-0.1 0 1 0 0.6 0

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
