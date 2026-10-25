#> asset:mob/0202.hunters_dream/tick/skill/side_step/step
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/side_step/

#> Private
# @private
    #declare tag Random

# 50:50で左右どっちかにサイドステップする
    execute if predicate lib:random_pass_per/50 run tag @s add Random

# motion
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute if entity @s[tag=!Random] facing entity @p[gamemode=!spectator] eyes rotated ~90 -10 run function lib:motion/
    execute if entity @s[tag= Random] facing entity @p[gamemode=!spectator] eyes rotated ~-90 -10 run function lib:motion/
    data remove storage lib: Argument

# リセット
    tag @s remove Random
