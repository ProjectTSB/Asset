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
    # 通常
        execute if predicate api:area/is_breakable at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive
    # ブロック破壊禁止エリア
        execute unless predicate api:area/is_breakable at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive_unless_breakable
