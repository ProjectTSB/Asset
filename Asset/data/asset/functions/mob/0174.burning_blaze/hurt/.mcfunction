#> asset:mob/0174.burning_blaze/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/174/hurt

# 被ダメ時、飛ぶ
    data modify storage lib: Argument.VectorMagnitude set value 0.5
    execute facing entity @p[tag=Attacker] feet rotated ~180 ~ run function lib:motion/
    data remove storage lib: Argument
