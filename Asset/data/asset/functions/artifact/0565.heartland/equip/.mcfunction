#> asset:artifact/0565.heartland/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/565/equip/


# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,565,3]
    data modify storage api: Argument.Amount set value 4
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/max_health/add

# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-023500000003 "565.Speed" 0.3 multiply_base

# フルセット処理
    execute if data storage asset:context id.all{head:562,chest:563,legs:564,feet:565} run function asset:artifact/0563.heartland/equip/fullset/equip/
