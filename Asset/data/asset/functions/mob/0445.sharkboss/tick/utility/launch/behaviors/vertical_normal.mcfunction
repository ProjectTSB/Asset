#> asset:mob/0445.sharkboss/tick/utility/launch/behaviors/vertical_normal
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/utility/launch/behaviors/

    # Motion
    data modify storage lib: Argument.VectorMagnitude set value 0.9d
    execute facing entity @s feet rotated ~ -75 run function lib:motion/looking
