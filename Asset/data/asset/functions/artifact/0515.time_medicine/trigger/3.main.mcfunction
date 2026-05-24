#> asset:artifact/0515.time_medicine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0515.time_medicine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 効果時間
    data modify storage asset:temp Effect.Duration set value 1200

# 補正量
    data modify storage asset:temp Effect.FieldOverride.PhysicalDefense set value 0.1
    data modify storage asset:temp Effect.FieldOverride.Heal set value 0.1

    data modify storage asset:temp Effect.FieldOverride.MagicDefense set value 0.1
    data modify storage asset:temp Effect.FieldOverride.MPHeal set value 0.1

# 朝と夜で異なるバフを付与
    execute if predicate lib:is_day run function asset:artifact/0515.time_medicine/trigger/effect.m {ID:357}
    execute if predicate lib:is_night run function asset:artifact/0515.time_medicine/trigger/effect.m {ID:358}

# リセット
    data remove storage asset:temp Effect
