#> asset:artifact/0915.flame_hunter_hat/trigger/fullset/dis_equip
#
# フルセット解除時の処理
#
# @within function
#   asset:artifact/0915.flame_hunter_hat/trigger/dis_equip/main
#   asset:artifact/0916.flame_hunter_clothes/trigger/dis_equip/main
#   asset:artifact/0917.flame_hunter_clothes/trigger/dis_equip/main
#   asset:artifact/0918.flame_hunter_boots/trigger/dis_equip/main

# フルセットTagを削除
    tag @s remove PF.Fullset

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,915,0]
    function api:modifier/defense/fire/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,915,0]
    function api:modifier/attack/fire/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-039300000000