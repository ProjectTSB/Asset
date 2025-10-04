#> asset:object/1061.azure_jelly/predicate/far_player
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# プレイヤーが近くにいたらfail
    execute if entity @p[tag=1061.Owner,distance=..32] run return fail

# 成功
    return 1
