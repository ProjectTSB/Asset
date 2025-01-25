#> asset:artifact/0629.ice_armor/equip/5.fullset_dis_equip
#
#
#
# @within function
#   asset:artifact/0628.ice_helm/equip/dis_equip/main
#   asset:artifact/0629.ice_armor/equip/dis_equip/main
#   asset:artifact/0630.ice_leggings/equip/dis_equip/main
#   asset:artifact/0631.ice_boots/equip/dis_equip/main

# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,629,0]
    function api:modifier/defense/water/remove

# 水攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,629,0]
    function api:modifier/attack/water/remove

# Tag削除
    tag @s remove HH.Fullset