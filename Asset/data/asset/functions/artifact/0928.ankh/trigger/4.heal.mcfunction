#> asset:artifact/0928.ankh/trigger/4.heal
#
# 回復する
#
# @within function asset:artifact/0928.ankh/trigger/3.main

# 最大体力の5%分回復
    execute store result storage api: Argument.Heal double 0.05 run attribute @s generic.max_health get
    execute as @p[tag=this] run function api:heal/modifier
    function api:heal/
    function api:heal/reset
