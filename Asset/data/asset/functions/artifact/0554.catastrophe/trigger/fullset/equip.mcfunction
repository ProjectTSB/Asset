#> asset:artifact/0554.catastrophe/trigger/fullset/equip
#
# フルセット装備時の処理
#
# @within function
#   asset:artifact/0554.catastrophe/trigger/3.main
#   asset:artifact/0555.catastrophe/trigger/3.main
#   asset:artifact/0556.catastrophe/trigger/3.main
#   asset:artifact/0557.catastrophe/trigger/3.main

# フルセットTagを付与
    tag @s add FE.Fullset

# フルセットバフを付与
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/give

say t
