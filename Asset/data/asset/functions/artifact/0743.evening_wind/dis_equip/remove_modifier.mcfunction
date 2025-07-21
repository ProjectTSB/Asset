#> asset:artifact/0743.evening_wind/dis_equip/remove_modifier
#
#
#
# @within function asset:artifact/0743.evening_wind/dis_equip/main

# 装備タグを外す
    tag @s remove KK.Equipped
# MP消費
    data modify storage api: Argument.Fluctuation set value -150
    function api:mp/fluctuation
