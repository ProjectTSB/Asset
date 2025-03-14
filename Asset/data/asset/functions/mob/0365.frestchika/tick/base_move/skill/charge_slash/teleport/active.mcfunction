#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active
#
# テレポート発動、移動を行う
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive

# レーザー！
    execute at @s positioned ~ ~1 ~ run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/visual_laser

# 移動
    tp @s ~ ~ ~
