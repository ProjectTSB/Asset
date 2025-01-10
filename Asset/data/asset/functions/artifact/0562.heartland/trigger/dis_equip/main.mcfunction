#> asset:artifact/0562.heartland/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0562.heartland/trigger/dis_equip/

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,562,6]
    function api:modifier/max_health/remove
