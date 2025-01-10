#> asset:artifact/0565.heartland/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0565.heartland/trigger/dis_equip/

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,565,3]
    function api:modifier/max_health/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-023500000003

# フルセット処理
    execute if data storage asset:context id.all{head:562,chest:563,legs:564,feet:565} run function asset:artifact/0563.heartland/trigger/fullset/dis_equip/
