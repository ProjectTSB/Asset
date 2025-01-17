#> asset:artifact/0247.heavenly_herb/trigger/4.ascension
#
# 昇天する
#
# @within function asset:artifact/0247.heavenly_herb/trigger/3.main

# 演出
    playsound block.glass.break player @a ~ ~ ~ 1 0.8 0

# 即死
    data modify storage api: Argument.Damage set value 9999f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは昇天した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
