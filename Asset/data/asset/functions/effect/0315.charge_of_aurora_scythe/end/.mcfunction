#> asset:effect/0315.charge_of_aurora_scythe/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0315.charge_of_aurora_scythe/_/end

# 攻撃用Effectで付与
# スタック段階に比例して攻撃用Effectの効果時間を変える
    data modify storage api: Argument.ID set value 316
    execute if data storage asset:context {Stack:1} run data modify storage api: Argument.Duration set value 1
    execute if data storage asset:context {Stack:2} run data modify storage api: Argument.Duration set value 4
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.Duration set value 8
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スタックが3なら移動速度上昇を付与
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.ID set value 317
    execute if data storage asset:context {Stack:3} run function api:entity/mob/effect/give
    execute if data storage asset:context {Stack:3} run function api:entity/mob/effect/reset
