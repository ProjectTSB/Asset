#> asset:mob/0202.hunters_dream/tick/skill/arrow/backstep
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/arrow/

# Motion
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p[gamemode=!spectator] eyes rotated ~180 -10 run function lib:motion/
    data remove storage lib: Argument
