#> asset:object/1061.azure_jelly/predicate/near_player
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# プレイヤーが近くにいないならfail
    execute positioned ~-6 ~-1 ~-6 unless entity @p[tag=1061.Owner,dx=11,dy=1,dz=11] run return 0

# 成功
    return 1
