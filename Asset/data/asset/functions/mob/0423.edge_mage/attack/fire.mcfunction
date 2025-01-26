#> asset:mob/0423.edge_mage/attack/fire
#
# 火
#
# @within function asset:mob/0423.edge_mage/attack/

# 属性セット
    data modify storage lib: Argument.ElementType set value "Fire"

# 演出
    particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.01 10
    particle minecraft:dust 1 0.5 0 1 ~ ~1 ~ 0.2 0.5 0.2 0.01 20
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5
