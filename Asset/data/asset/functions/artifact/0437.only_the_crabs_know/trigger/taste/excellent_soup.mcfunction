#> asset:artifact/0437.only_the_crabs_know/trigger/taste/excellent_soup
#
# HPMP回復 (うまいっ！)
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"はうまいっ！ と賞賛した"}]
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 2.0

# HP回復
    data modify storage api: Argument.Heal set value 20f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    data modify storage api: Argument.FixedHeal set value false
    function api:heal/
    function api:heal/reset

# MP回復
    data modify storage api: Argument.Fluctuation set value 50
    function api:mp/fluctuation
