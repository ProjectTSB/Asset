#> asset:artifact/1615.ema_of_abundance/trigger/dis_equip/not_in_hotbar
#
#
#
# @within function asset:artifact/1615.ema_of_abundance/trigger/dis_equip/main

# tag削除
    tag @s remove 18V.Equip

# MP消費
    data modify storage api: Argument.Fluctuation set value -120
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
