#> asset:mob/0445.sharkboss/tick/utility/launch/behaviors/horizontal_normal
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/utility/launch/behaviors/

    # Motion
    data modify storage lib: Argument.VectorMagnitude set value 0.3d
    execute facing entity @s feet rotated ~ -25 run function lib:motion/looking
