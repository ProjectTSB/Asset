#> asset:artifact/0772.dolphin_amulet/trigger/dis_equip/not_in_hotbar
#
#
#
# @within function asset:artifact/0772.dolphin_amulet/trigger/dis_equip/main

# エフェクト解除
    data modify storage api: Argument.ID set value 356
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# tag削除
    tag @s remove LG.Equipped
