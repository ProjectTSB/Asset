#> asset:artifact/0559.solitariness/trigger/fullset/equip
#
# フルセット装備時の処理
#
# @within function
#   asset:artifact/0558.solitariness/trigger/3.main
#   asset:artifact/0559.solitariness/trigger/3.main
#   asset:artifact/0560.solitariness/trigger/3.main
#   asset:artifact/0561.solitariness/trigger/3.main

# フルセットバフを付与
    data modify storage api: Argument.ID set value 335
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
