#> asset:object/1076.airlift/tick/heal
#
#
#
# @within function asset:object/1076.airlift/tick/supply

# 回復
# HP回復
    execute store result storage api: Argument.Heal double 0.0050 run attribute @s generic.max_health get 100
    $execute as @p[scores={UserID=$(OwnerID)}] run function api:heal/modifier
    function api:heal/
    function api:heal/reset
