#> asset:artifact/0554.catastrophe/trigger/fullset/equip
#
# フルセット装備時の処理
#
# @within function
#   asset:artifact/0554.catastrophe/trigger/3.main
#   asset:artifact/0555.catastrophe/trigger/3.main
#   asset:artifact/0556.catastrophe/trigger/3.main
#   asset:artifact/0557.catastrophe/trigger/3.main

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.2 180
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0554.catastrophe/trigger/fullset/vfx/1
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0554.catastrophe/trigger/fullset/vfx/2
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0554.catastrophe/trigger/fullset/vfx/3
    playsound entity.phantom.death player @a ~ ~ ~ 1 0.5
    playsound entity.phantom.death player @a ~ ~ ~ 1 0.55
    playsound entity.phantom.death player @a ~ ~ ~ 1 0.6

# フルセットTagを付与
    tag @s add FE.Fullset

# フルセットバフを付与
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/give
