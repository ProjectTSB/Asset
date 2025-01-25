#> asset:artifact/0564.heartland/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/564/equip/


# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,564,4]
    data modify storage api: Argument.Amount set value 4
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/max_health/add

# フルセット処理
    execute if data storage asset:context id.all{head:562,chest:563,legs:564,feet:565} run function asset:artifact/0563.heartland/equip/fullset/equip/
