#> asset:mob/0445.sharkboss/tick/utility/launch/behaviors/horizontal_light
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/utility/launch/behaviors/

    # Motion
    data modify storage lib: Argument.VectorMagnitude set value 0.5d
    execute facing entity @s feet rotated ~ -35 run function lib:motion/looking
