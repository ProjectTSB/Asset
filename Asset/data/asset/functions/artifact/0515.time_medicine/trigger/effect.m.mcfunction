#> asset:artifact/0515.time_medicine/trigger/effect.m
#
#
#
# @within function asset:artifact/0515.time_medicine/trigger/3.main

# 効果時間
    data modify storage api: Argument.Duration set value 1200

# 補正量
    data modify storage api: Argument.FieldOverride.Modifier.PhysicalDefense set value 0.1
    data modify storage api: Argument.FieldOverride.Modifier.Heal set value 0.1

    data modify storage api: Argument.FieldOverride.Modifier.MagicDefense set value 0.1
    data modify storage api: Argument.FieldOverride.Modifier.MPHeal set value 0.1

# 今エンドにいるならエンド判定を設定
    execute if predicate lib:dimension/is_end run data modify storage api: Argument.FieldOverride.InTheEnd set value true

# エフェクト
    $data modify storage api: Argument.ID set value $(ID)
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
