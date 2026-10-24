#> asset:artifact/1648.cursed_power_stone/dis_equip/3.main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1648.cursed_power_stone/dis_equip/2.check_condition

# Effect427削除
    data modify storage api: Argument.ID set value 427
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# Effect428付与
    data modify storage api: Argument.ID set value 428
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 装備中タグを削除
    tag @s remove 1648.Equipping
