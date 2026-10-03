#> asset:effect/0375.charge_of_thunderflash/end/teleport/check_hit_box
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/teleport/recursive

    execute unless block ~0.3 ~ ~0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~ ~0.3 #lib:no_collision/ run return 0
    execute unless block ~0.3 ~ ~-0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~ ~-0.3 #lib:no_collision/ run return 0

    execute unless block ~0.3 ~1 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~0.3 ~1 ~-0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1 ~-0.3 #lib:no_collision/ run return 0

    execute unless block ~0.3 ~1.8 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1.8 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~0.3 ~1.8 ~-0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1.8 ~-0.3 #lib:no_collision/ run return 0

# 成功
    return 1
