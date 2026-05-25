#> asset:artifact/0515.time_medicine/trigger/effect.m
#
#
#
# @within function asset:artifact/0515.time_medicine/trigger/3.main

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

# エフェクト
    $data modify storage api: Argument.ID set value $(ID)
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
