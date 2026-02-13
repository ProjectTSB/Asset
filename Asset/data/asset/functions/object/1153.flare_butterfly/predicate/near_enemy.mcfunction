#> asset:object/1153.flare_butterfly/predicate/near_enemy
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/move/**

# Ownerの周囲に敵が周囲にいないなら失敗
    execute at @p[tag=1153.Owner] unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10] run return 0

# 成功
    return 1
