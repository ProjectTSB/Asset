#> asset:mob/0202.hunters_dream/tick/skill/sword/step
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/sword/

# Motion
    data modify storage lib: Argument.VectorMagnitude set value 2.3
    execute facing entity @p[gamemode=!spectator] feet rotated ~ ~-12.5 run function lib:motion/
    data remove storage lib: Argument

# ステップ中に攻撃をしないように弱体化を付与
    effect give @s weakness 1 100 true
