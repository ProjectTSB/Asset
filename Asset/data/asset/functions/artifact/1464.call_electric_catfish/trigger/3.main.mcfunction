#> asset:artifact/1464.call_electric_catfish/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1464.call_electric_catfish/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# Object1160召喚
    data modify storage api: Argument.ID set value 1160
    # 攻撃情報
        data modify storage api: Argument.FieldOverride.Damage set value 100.0d
        data modify storage api: Argument.FieldOverride.AttackType set value "Physical"
        data modify storage api: Argument.FieldOverride.ElementType set value "Thunder"

    # 攻撃範囲: Objectを中心とした、一辺AttackRangeの正方形を攻撃する
        data modify storage api: Argument.FieldOverride.AttackRange set value 7.0d

    # 範囲攻撃の判定クールダウン
        data modify storage api: Argument.FieldOverride.AttackCooldown set value 10

    # 範囲攻撃のダメージ倍率
        data modify storage api: Argument.FieldOverride.DamageMultiplier set value 0.5

    # 存在時間
        data modify storage api: Argument.FieldOverride.Tick set value 1200

    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
