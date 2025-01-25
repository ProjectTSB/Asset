#> asset:artifact/0711.deep_sea_coral_crown/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/711/equip/


# メモ 各部位 水耐性+10％ 水攻撃+5％ 体力回復量+5％ 火耐性-10%

# 演出
    execute unless data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run particle dust 0.439 0.737 1 0.75 ~ ~1.7 ~ 0.4 0.2 0.4 0 50 normal
    execute unless data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} positioned ~ ~1.7 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/equip/vfx
    execute unless data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 1 2

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value 0.07
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value 0.07
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,711,6]
    data modify storage api: Argument.Amount set value -0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# フルセット
    execute if data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run function asset:artifact/0711.deep_sea_coral_crown/equip/fullset/equip
