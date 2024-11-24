#> asset:artifact/1137.over_pulse_headgear/attack_melee/check
#
# 装備の発動条件のチェック
#
# @within function asset:artifact/alias/1137/attack_melee/check

# フルセットかどうか確認する
    data modify storage api: Argument.ID set value 274
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
