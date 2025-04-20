#> asset:artifact/0740.flower_of_hazy_moon/dis_equip/remove_modifier
#
#
#
# @within function asset:artifact/0740.flower_of_hazy_moon/dis_equip/main

# 装備タグを外す
    tag @s remove KH.Equipped
# MP消費
    data modify storage api: Argument.Fluctuation set value -150
    function api:mp/fluctuation
