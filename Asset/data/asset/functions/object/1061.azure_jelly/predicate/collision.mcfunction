#> asset:object/1061.azure_jelly/predicate/collision
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/check_collision.m

# 判定
    execute unless block ~ ~ ~ #lib:no_collision/ run return fail
    execute unless block ~ ~0.5 ~ #lib:no_collision/ run return fail
    execute unless block ~ ~1.0 ~ #lib:no_collision/ run return fail

# 成功
    return 1
