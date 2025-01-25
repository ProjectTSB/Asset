#> asset:artifact/0554.catastrophe/equip/fullset/dis_equip
#
# フルセット解除時の処理
#
# @within function
#   asset:artifact/0554.catastrophe/equip/dis_equip/main
#   asset:artifact/0555.catastrophe/equip/dis_equip/main
#   asset:artifact/0556.catastrophe/equip/dis_equip/main
#   asset:artifact/0557.catastrophe/equip/dis_equip/main

# フルセットTagを削除
    tag @s remove FE.Fullset

# フルセットバフを削除
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# スコアリセット
    scoreboard players reset @s FE.Cooldown
    scoreboard players reset @s FE.DamageSum
