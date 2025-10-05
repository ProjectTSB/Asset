#> asset:object/1061.azure_jelly/predicate/near_enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# 敵が近くにいるかを判定
    execute positioned ~-14 ~-14 ~-14 unless entity @e[type=#lib:living_without_player,tag=Enemy,dx=27,dy=27,dz=27,limit=1] run return fail

# 成功
    return 1
