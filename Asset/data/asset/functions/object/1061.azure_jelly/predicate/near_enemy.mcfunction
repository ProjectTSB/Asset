#> asset:object/1061.azure_jelly/predicate/near_enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# 敵が近くにいるかを判定
    execute positioned ~-8 ~-8 ~-8 unless entity @e[type=#lib:living_without_player,tag=Enemy,dx=15,dy=15,dz=15,limit=1] run return 0

# 成功
    return 1
