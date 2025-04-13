#> asset:effect/0329.charge_of_deep_azure/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0329.charge_of_deep_azure/_/end

# 攻撃用Effectを付与
# スタック段階に比例して攻撃用Effectの効果時間を変える
    data modify storage api: Argument.ID set value 330
    execute if data storage asset:context {Stack:1} run data modify storage api: Argument.Duration set value 3
    execute if data storage asset:context {Stack:2} run data modify storage api: Argument.Duration set value 7
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.Duration set value 18
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
