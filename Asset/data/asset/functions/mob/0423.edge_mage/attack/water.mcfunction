#> asset:mob/0423.edge_mage/attack/water
#
#
#
# @within function asset:mob/0423.edge_mage/attack/

# 属性セット
    data modify storage lib: Argument.ElementType set value "Water"

# 演出
    particle minecraft:bubble_pop ~ ~1 ~ 0.3 0.5 0.3 0.01 10
    particle minecraft:dust 0 0.5 1 1 ~ ~1 ~ 0.2 0.5 0.2 0.01 20
    playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 1 0.7
