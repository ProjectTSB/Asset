#> asset:artifact/0727.oblivious_snow/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/727/equip/


# 演出
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run particle snowflake ~ ~0.2 ~ 0.4 0.1 0.4 0.1 50 normal @a
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
    execute unless data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0 0

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,727,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 水攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,727,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 被回復量-15%
    data modify storage api: Argument.UUID set value [I;1,1,727,3]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/receive_heal/add

# フルセット
    execute if data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run function asset:artifact/0724.oblivious_snow/equip/fullset/equip