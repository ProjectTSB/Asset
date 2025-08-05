#> asset:mob/0202.hunters_dream/tick/skill/sword/backstep
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/sword/

# Motion
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute facing entity @p[gamemode=!spectator] eyes rotated ~180 -10 run function lib:motion/
    data remove storage lib: Argument
