#> asset:artifact/0468.raging_demon/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/468/tick/

# 防御無視・補正なし・物理・無属性の30のダメージを与える
    data modify storage lib: Argument.Damage set value 30f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value true
    function lib:damage/modifier
    execute as @e[tag=D0.Target] run function lib:damage/

# リセット
    function lib:damage/reset
    tag @e[tag=D0.Target] remove D0.Target
