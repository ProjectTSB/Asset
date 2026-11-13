#> asset:artifact/1422.overhauled_toaster/release_using_item/3.main
#
# チャージ段階に応じたパンを射出する
#
# @within function asset:artifact/1422.overhauled_toaster/release_using_item/2.check_condition

# 発射用Effectへ弾速・威力・射程を渡す
    data modify storage api: Argument.ID set value 434
    data modify storage api: Argument.FieldOverride.Range set value 40
    execute if data storage api: Return.Effect{Stack:1} run data modify storage api: Argument.FieldOverride.Speed set value 1
    execute if data storage api: Return.Effect{Stack:2} run data modify storage api: Argument.FieldOverride.Speed set value 1
    execute if data storage api: Return.Effect{Stack:3} run data modify storage api: Argument.FieldOverride.Speed set value 1
    execute if data storage api: Return.Effect{Stack:4} run data modify storage api: Argument.FieldOverride.Speed set value 2
    execute if data storage api: Return.Effect{Stack:5} run data modify storage api: Argument.FieldOverride.Speed set value 2
    execute if data storage api: Return.Effect{Stack:6} run data modify storage api: Argument.FieldOverride.Speed set value 2
    execute if data storage api: Return.Effect{Stack:7} run data modify storage api: Argument.FieldOverride.Speed set value 4
    execute if data storage api: Return.Effect{Stack:1} run data modify storage api: Argument.FieldOverride.Damage set value 40
    execute if data storage api: Return.Effect{Stack:2} run data modify storage api: Argument.FieldOverride.Damage set value 70
    execute if data storage api: Return.Effect{Stack:3} run data modify storage api: Argument.FieldOverride.Damage set value 120
    execute if data storage api: Return.Effect{Stack:4} run data modify storage api: Argument.FieldOverride.Damage set value 120
    execute if data storage api: Return.Effect{Stack:5} run data modify storage api: Argument.FieldOverride.Damage set value 120
    execute if data storage api: Return.Effect{Stack:6} run data modify storage api: Argument.FieldOverride.Damage set value 120
    execute if data storage api: Return.Effect{Stack:7} run data modify storage api: Argument.FieldOverride.Damage set value 120
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# チャージ用Effectを削除する
    data modify storage api: Argument.ID set value 415
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
