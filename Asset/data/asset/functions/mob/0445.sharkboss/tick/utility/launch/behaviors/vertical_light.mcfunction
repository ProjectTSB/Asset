#> asset:mob/0445.sharkboss/tick/utility/launch/behaviors/vertical_light
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/utility/launch/behaviors/

    # Motion
    data modify storage lib: Argument.VectorMagnitude set value 0.7d
    execute facing entity @s feet rotated ~ -57 run function lib:motion/looking
