#> asset:artifact/1590.rice_cooker/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1590.rice_cooker/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 392
    #攻撃情報
    data modify storage api: Argument.FieldOverride.Damage set value 5.0f
    data modify storage api: Argument.FieldOverride.AttackType set value "Physical"
    data modify storage api: Argument.FieldOverride.ElementType set value "Water"

    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
