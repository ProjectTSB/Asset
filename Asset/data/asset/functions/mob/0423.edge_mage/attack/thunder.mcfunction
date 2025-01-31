#> asset:mob/0423.edge_mage/attack/thunder
#
#
#
# @within function asset:mob/0423.edge_mage/attack/

# 属性セット
    data modify storage api: Argument.ElementType set value "Thunder"

# 演出
    particle minecraft:electric_spark ~ ~1 ~ 0.1 0.5 0.1 1 10
    particle minecraft:dust 1 1 0.25 1 ~ ~1 ~ 0.2 0.5 0.2 0.01 20
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 1 1.5
