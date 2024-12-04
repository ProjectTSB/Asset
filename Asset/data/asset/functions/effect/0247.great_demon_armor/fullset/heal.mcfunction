#> asset:effect/0247.great_demon_armor/fullset/heal
# @within function asset:effect/0247.great_demon_armor/fullset/passive

# 1HP回復
    data modify storage api: Argument.Heal set value 1.0
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
