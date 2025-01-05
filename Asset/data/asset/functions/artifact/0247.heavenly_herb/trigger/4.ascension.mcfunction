#> asset:artifact/0247.heavenly_herb/trigger/4.ascension
#
# 昇天する
#
# @within function asset:artifact/0247.heavenly_herb/trigger/3.main

# 演出
    playsound block.glass.break player @a ~ ~ ~ 1 0.8 0

# 即死
    data modify storage lib: Argument.Damage set value 9999f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value true
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは昇天した","with":[{"selector":"@s"}]}]']
    function lib:damage/modifier
    function lib:damage/
    function lib:damage/reset