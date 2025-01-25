#> asset:artifact/0712.deep_sea_coral_raiment/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/712/equip/


# 演出
    execute unless data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run function asset:artifact/0712.deep_sea_coral_raiment/equip/4.vfx

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    data modify storage api: Argument.Amount set value 0.07
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    data modify storage api: Argument.Amount set value 0.07
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    data modify storage api: Argument.Amount set value -0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# フルセット
    execute if data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run function asset:artifact/0711.deep_sea_coral_crown/equip/fullset/equip
