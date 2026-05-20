#> asset:artifact/1317.oblivious_feather/trigger/dis_equip/not_in_hotbar
#
#
#
# @within function asset:artifact/1317.oblivious_feather/trigger/dis_equip/main

# Tag削除
    tag @s remove 10L.Equip

# MP消費
    data modify storage api: Argument.Fluctuation set value -150
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
