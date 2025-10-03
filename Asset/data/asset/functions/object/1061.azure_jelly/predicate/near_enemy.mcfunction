#> asset:object/1061.azure_jelly/predicate/near_enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# 敵が近くにいなければfail
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..16,limit=1] run return fail

# 成功
    return 1
