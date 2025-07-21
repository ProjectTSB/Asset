#> asset:artifact/0986.order_of_healing/trigger/dis_equip/remove_modifier
#
#
#
# @within function asset:artifact/0986.order_of_healing/trigger/dis_equip/main

# 装備タグを外す
    tag @s remove RE.Equipped
# MP消費
    data modify storage api: Argument.Fluctuation set value -150
    function api:mp/fluctuation
