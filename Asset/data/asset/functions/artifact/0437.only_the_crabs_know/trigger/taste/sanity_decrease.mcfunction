#> asset:artifact/0437.only_the_crabs_know/trigger/taste/sanity_decrease
#
# HP減少MP回復 (正気度減少)
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は正気度が減った"}]
    playsound entity.squid.death player @a ~ ~ ~ 1.0 1.5

# HP減少
    data modify storage api: Argument.Damage set value 15f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは正気を失った","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# MP回復
    data modify storage api: Argument.Fluctuation set value 100
    function api:mp/fluctuation
