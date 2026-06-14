#> asset:artifact/1500.elemental_affection/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1500.elemental_affection/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く
    # say test: 1500.elemental_affection
    # particle minecraft:nautilus ~ ~1.25 ~ 0.0 0.5 0.0 0.5 75
    execute if data storage asset:context Damage{ElementType:Fire} run data modify storage api: Argument.ID set value 366
    execute if data storage asset:context Damage{ElementType:Fire} run function api:entity/mob/effect/give
    execute if data storage asset:context Damage{ElementType:Fire} run function api:entity/mob/effect/reset

    execute if data storage asset:context Damage{ElementType:Water} run data modify storage api: Argument.ID set value 367
    execute if data storage asset:context Damage{ElementType:Water} run function api:entity/mob/effect/give
    execute if data storage asset:context Damage{ElementType:Water} run function api:entity/mob/effect/reset
    
    execute if data storage asset:context Damage{ElementType:Thunder} run data modify storage api: Argument.ID set value 368
    execute if data storage asset:context Damage{ElementType:Thunder} run function api:entity/mob/effect/give
    execute if data storage asset:context Damage{ElementType:Thunder} run function api:entity/mob/effect/reset
