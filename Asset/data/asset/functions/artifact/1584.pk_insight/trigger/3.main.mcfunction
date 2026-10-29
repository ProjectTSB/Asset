#> asset:artifact/1584.pk_insight/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1584.pk_insight/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く
# Effect 386を付与
    data modify storage api: Argument.ID set value 386

    # 効果時間
    data modify storage api: Argument.Duration set value 39

    # カウンターが始まる残りtick数
    data modify storage api: Argument.FieldOverride.FlagTick set value 9

    # カウンター時の攻撃情報(Damage.Regularは割合、Damage.Bossは実数値)
    data modify storage api: Argument.FieldOverride.Damage.Regular set value 0.35d
    data modify storage api: Argument.FieldOverride.Damage.Boss set value 1000.0d
    data modify storage api: Argument.FieldOverride.AttackType set value "Magic"
    data modify storage api: Argument.FieldOverride.ElementType set value "None"

    # modifier: 低防御中
    data modify storage api: Argument.FieldOverride.Modifier.Debuff.Defense set value -0.7
    data modify storage api: Argument.FieldOverride.Modifier.Debuff.MovementSpeed set value -0.5

    # modifier: カウンター中
    data modify storage api: Argument.FieldOverride.Modifier.Buff.Defense set value 0.7

    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
