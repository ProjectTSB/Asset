#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/
#
#
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/phase2

# ちょっと上に移動
    tp @s ~ ~0.2 ~ ~ ~-2.5

# 再帰スタート
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive
