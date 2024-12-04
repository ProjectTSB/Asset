#> asset:artifact/0625.flame_armor/equip/5.fullset_dis_equip
#
#
#
# @within function
#   asset:artifact/0624.flame_helm/equip/dis_equip/main
#   asset:artifact/0625.flame_armor/equip/dis_equip/main
#   asset:artifact/0626.flame_leggings/equip/dis_equip/main
#   asset:artifact/0627.flame_boots/equip/dis_equip/main

# Tag削除
    tag @s remove HD.Fullset

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
    function api:modifier/defense/fire/remove

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
    function api:modifier/attack/fire/remove