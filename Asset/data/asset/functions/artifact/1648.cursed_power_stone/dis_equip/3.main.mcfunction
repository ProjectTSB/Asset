#> asset:artifact/1648.cursed_power_stone/dis_equip/3.main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1648.cursed_power_stone/dis_equip/2.check_condition

# Fieldを取得しておく
    data modify storage api: Argument.ID set value 427
    function api:entity/mob/effect/get/from_id

# Effect427削除
    data modify storage api: Argument.ID set value 427
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 戦闘中ならEffect428付与
    data modify storage api: Argument.ID set value 428

    # Fieldを引き継ぐ
        data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field

    execute if predicate lib:in_battle run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 装備中タグを削除
    tag @s remove A1648.Equipping
