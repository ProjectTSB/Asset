#> asset:effect/0247.great_demon_armor/fullset/heal
# @within function asset:effect/0247.great_demon_armor/fullset/passive

# 最大HPの1%を回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.01 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.DisableLog set value true
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
