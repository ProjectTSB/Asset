#> asset:artifact/1430.shield_of_fate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1430.shield_of_fate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

#> Private
# @private
    #declare score_holder $13Q.Damage

# 受けたダメージを0.5倍して自身にその数値分ダメージを与える
    execute store result storage api: Argument.Damage double 0.005 run data get storage asset:context Damage.Amount 100
    data modify storage api: Argument.AttackType set from storage asset:context Damage.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context Damage.ElementType
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/
    function api:damage/reset
