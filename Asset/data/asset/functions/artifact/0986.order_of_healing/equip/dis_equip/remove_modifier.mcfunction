#> asset:artifact/0986.order_of_healing/equip/dis_equip/remove_modifier
#
#
#
# @within function asset:artifact/0986.order_of_healing/equip/dis_equip/main

# MP消費
    data modify storage api: Argument.Fluctuation set value -150
    function api:mp/fluctuation

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    function api:modifier/heal/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    function api:modifier/mp_regen/remove

# 攻撃力
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    function api:modifier/attack/base/remove

tag @s remove RE.Modifier
