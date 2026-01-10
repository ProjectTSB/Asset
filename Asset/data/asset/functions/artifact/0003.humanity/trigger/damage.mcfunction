#> asset:artifact/0003.humanity/trigger/damage
#
#
#
# @within function asset:artifact/0003.humanity/trigger/3.main

# 演出
    title @s title {"text":"YOU DIED","color":"red"}
    playsound block.beacon.power_select player @s ~ ~ ~ 1 0 1

# 致死量のダメージを受ける
    data modify storage api: Argument.Damage set value 9999
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは人間性を喪失した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
