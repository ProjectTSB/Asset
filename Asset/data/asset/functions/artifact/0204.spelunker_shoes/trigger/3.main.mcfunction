#> asset:artifact/0204.spelunker_shoes/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0204.spelunker_shoes/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# プレイヤーを死亡させる
    data modify storage api: Argument.Damage set value 9999
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは足をくじいたので帰った","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
