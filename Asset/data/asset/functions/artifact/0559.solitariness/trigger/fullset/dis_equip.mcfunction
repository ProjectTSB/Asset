#> asset:artifact/0554.catastrophe/trigger/fullset/dis_equip
#
# フルセット解除時の処理
#
# @within function
#   asset:artifact/0558.solitariness/trigger/dis_equip/main
#   asset:artifact/0559.solitariness/trigger/dis_equip/main
#   asset:artifact/0560.solitariness/trigger/dis_equip/main
#   asset:artifact/0561.solitariness/trigger/dis_equip/main

# フルセットバフを削除
    data modify storage api: Argument.ID set value 335
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
