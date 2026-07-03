#> asset:artifact/1318.blue_bouquet/trigger/dis_equip/not_in_hotbar
#
#
#
# @within function asset:artifact/1318.blue_bouquet/trigger/dis_equip/main

# tag削除
    tag @s remove 10M.Equip

# MP消費
    data modify storage api: Argument.Fluctuation set value -150
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
