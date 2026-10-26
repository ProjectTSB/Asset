#> asset:artifact/1584.pk_insight/damage_from_entity/2.check_condition
#
#
#
# @within function asset:artifact/1584.pk_insight/damage_from_entity/1.trigger

# 他にアイテム等確認する場合はここに書く
# Effect 386が付与されている状態が条件
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/get/from_id
    function api:entity/mob/effect/reset
    execute unless data storage api: Return.Effect{ID:386} run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1584.pk_insight/damage_from_entity/3.main
