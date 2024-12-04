#> asset:artifact/0204.spelunker_shoes/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/204/tick/

# プレイヤーを死亡させる
    data modify storage api: Argument.Damage set value 9999
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは足をくじいたので帰った","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
