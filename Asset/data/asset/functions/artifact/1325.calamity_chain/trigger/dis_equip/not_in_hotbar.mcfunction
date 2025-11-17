#> asset:artifact/1325.calamity_chain/trigger/dis_equip/not_in_hotbar
#
#
#
# @within function asset:artifact/1325.calamity_chain/trigger/dis_equip/main

# tag削除
    tag @s remove 10T.Equip

# MP消費
    data modify storage api: Argument.Fluctuation set value -999
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
