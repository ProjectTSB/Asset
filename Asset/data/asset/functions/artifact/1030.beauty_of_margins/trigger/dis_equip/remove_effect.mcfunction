#> asset:artifact/1030.beauty_of_margins/trigger/dis_equip/remove_effect
#
# エフェクトを削除する
#
# @within function asset:artifact/1030.beauty_of_margins/trigger/dis_equip/main

# Tag削除する
    tag @s remove SM.Modifier

# バフを削除する
    data modify storage api: Argument.ID set value 226
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 227
    function api:entity/mob/effect/remove/from_id