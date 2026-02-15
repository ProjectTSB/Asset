#> asset:object/2137.blazing_aoe/tick/aoe
#
#
#
# @within function asset:object/2137.blazing_aoe/tick/

# パーティクル
    particle minecraft:dust 1 0.4 0 2 ~ ~0.2 ~ 2.5 0 2.5 0 20 force @a[distance=..30]
    particle minecraft:lava ~ ~0.2 ~ 3 0 3 0 5

# パーティクル
    execute positioned ~ ~0.1 ~ run function asset:object/2137.blazing_aoe/tick/shape

# ダメージ判定
    execute positioned ~-9 ~0 ~-9 if entity @a[tag=!PlayerShouldInvulnerable,dx=17,dy=0,dz=17] at @s as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function asset:object/2137.blazing_aoe/tick/damage
