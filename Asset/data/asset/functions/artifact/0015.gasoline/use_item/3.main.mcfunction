#> asset:artifact/0015.gasoline/use_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0015.gasoline/use_item/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    #function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 毒
    data modify storage api: Argument.ID set value 29
    data modify storage api: Argument.Duration set value 200
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
# ダメージ
    data modify storage api: Argument.Damage set value 10.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate":"%1$sはガソリン中毒で死んだ","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate":"%1$sは自分を車と勘違いした","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
