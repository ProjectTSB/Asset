#> asset:artifact/0515.time_medicine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0515.time_medicine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 調整班向けメモ
# エンドでは日食バフ(隠し効果)が付与される
# 攻撃・耐性+ 与回復量・MP回復量-

# 効果時間
    data modify storage api: Argument.Duration set value 1200

# 補正量
# 各バフが切り替わる場合があるので、全部の補正の情報を設定しておく
    # 昼バフ
        data modify storage api: Argument.FieldOverride.Modifier.Day.PhysicalDefense set value 0.1d
        data modify storage api: Argument.FieldOverride.Modifier.Day.Heal set value 0.1d
    # 夜バフ
        data modify storage api: Argument.FieldOverride.Modifier.Night.MagicDefense set value 0.1d
        data modify storage api: Argument.FieldOverride.Modifier.Night.MPHeal set value 0.1d
    # 日食バフ(エンド)
        data modify storage api: Argument.FieldOverride.Modifier.Eclipse.Attack set value 0.1d
        data modify storage api: Argument.FieldOverride.Modifier.Eclipse.Defense set value 0.2d
        data modify storage api: Argument.FieldOverride.Modifier.Eclipse.Heal set value -0.1d
        data modify storage api: Argument.FieldOverride.Modifier.Eclipse.MPHeal set value -0.1d

# 昼・夜・エンドで異なるバフを付与
    execute if predicate lib:is_day unless predicate lib:dimension/is_end run data modify storage api: Argument.ID set value 357
    execute if predicate lib:is_night unless predicate lib:dimension/is_end run data modify storage api: Argument.ID set value 358
    execute if predicate lib:dimension/is_end run data modify storage api: Argument.ID set value 359
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
