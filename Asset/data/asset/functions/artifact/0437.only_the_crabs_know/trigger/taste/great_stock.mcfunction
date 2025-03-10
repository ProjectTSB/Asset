#> asset:artifact/0437.only_the_crabs_know/trigger/taste/great_stock
#
# 回復 & リジェネ (出汁美味)
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# HP回復
    data modify storage api: Argument.Heal set value 10f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    data modify storage api: Argument.FixedHeal set value false
    function api:heal/
    function api:heal/reset

# リジェネ
    data modify storage api: Argument.ID set value 84
    data modify storage api: Argument.Stack set value 4
    data modify storage api: Argument.Duration set value 12000
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は出汁が良く出ていると絶賛した"}]
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 1.3
