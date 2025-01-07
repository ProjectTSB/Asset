#> asset:mob/0201.burnt_out_dream/tick/1.sword/step
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/1.sword/main

# 数値
    data modify storage lib: Argument.VectorMagnitude set value 1.6
# 飛ぶ方向
    execute facing entity @p[gamemode=!spectator] eyes rotated ~-10 ~ run function lib:motion/
# リセット
    data remove storage lib: Argument

# ステップ中に攻撃をしないように弱体化を付与
    effect give @s weakness 1 100 true
