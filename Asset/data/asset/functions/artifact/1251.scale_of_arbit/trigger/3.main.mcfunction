#> asset:artifact/1251.scale_of_arbit/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1251.scale_of_arbit/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 固定ダメージ
    data modify storage api: Argument.Damage set value 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# バリアバフを得る
    data modify storage api: Argument.ID set value 318
    data modify storage api: Argument.FieldOverride.Barrier set value 20
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
