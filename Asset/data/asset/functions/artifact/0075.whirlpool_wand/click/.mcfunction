#> asset:artifact/0075.whirlpool_wand/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/75/click/

# 演出(水中)
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,predicate=lib:is_in_water/include_flowing,distance=..5] run function asset:artifact/0075.whirlpool_wand/click/vfx/inside_water
# 演出(水中ではない)
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,predicate=!lib:is_in_water/include_flowing,distance=..5] run function asset:artifact/0075.whirlpool_wand/click/vfx/outside_water

# ダメージ(水中)
    data modify storage api: Argument.Damage set value 25f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,predicate=lib:is_in_water/include_flowing,distance=..5] run function api:damage/
    function api:damage/reset

# ダメージ(水中ではない)
    data modify storage api: Argument.Damage set value 12f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,predicate=!lib:is_in_water/include_flowing,distance=..5] run function api:damage/
    function api:damage/reset
