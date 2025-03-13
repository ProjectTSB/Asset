#> asset:effect/0270.honey_regeneration/tick/heal
#
# 回復する
#
# @within function asset:effect/0270.honey_regeneration/tick/

# 回復
    data modify storage api: Argument.Heal set value 1.5f
    function api:heal/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:heal/
    function api:heal/reset
