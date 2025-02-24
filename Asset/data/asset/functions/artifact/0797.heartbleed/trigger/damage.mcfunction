#> asset:artifact/0797.heartbleed/trigger/damage
#
# 
#
# @within function asset:artifact/0797.heartbleed/trigger/bleed

# ダメージ
    data modify storage api: Argument.Damage set value 300.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
