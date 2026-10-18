#> asset:artifact/1227.aurora_scythe/release_using_item/3.main
#
# チャージ段階に応じた効果を発動する
#
# @within function asset:artifact/1227.aurora_scythe/release_using_item/2.check_condition

# 攻撃用Effectで付与
# スタック段階に比例して攻撃用Effectの効果時間を変える
    data modify storage api: Argument.ID set value 316
    execute if data storage api: Return.Effect{Stack:1} run data modify storage api: Argument.Duration set value 1
    execute if data storage api: Return.Effect{Stack:2} run data modify storage api: Argument.Duration set value 4
    execute if data storage api: Return.Effect{Stack:3} run data modify storage api: Argument.Duration set value 8
    data modify storage api: Argument.FieldOverride.Damage set from storage api: Return.Effect.Field.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: Return.Effect.Field.AdditionalMPHeal
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# チャージ用Effectを削除する
    data modify storage api: Argument.ID set value 315
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
