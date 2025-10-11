#> asset:object/1061.azure_jelly/predicate/collision
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/**

# 判定
    execute unless block ~ ~-0.75 ~ #lib:no_collision/ run return 0
    execute unless block ~ ~-0.5 ~ #lib:no_collision/ run return 0
    execute unless block ~ ~0.0 ~ #lib:no_collision/ run return 0
    execute unless block ~0.35 ~1.0 ~0.35 #lib:no_collision/ run return 0
    execute unless block ~0.35 ~1.0 ~-0.35 #lib:no_collision/ run return 0
    execute unless block ~-0.35 ~1.0 ~0.35 #lib:no_collision/ run return 0
    execute unless block ~-0.35 ~1.0 ~-0.35 #lib:no_collision/ run return 0

# 成功
    return 1
