#> asset:artifact/0562.heartland/equip/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0562.heartland/equip/dis_equip/

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,562,6]
    function api:modifier/max_health/remove

# フルセット処理
    execute if data storage asset:context id.all{head:562,chest:563,legs:564,feet:565} run function asset:artifact/0563.heartland/equip/fullset/dis_equip/
