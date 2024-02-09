#> asset:artifact/0916.flame_hunter_clothes/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0916.flame_hunter_clothes/trigger/dis_equip/

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,916,5]
    function api:modifier/defense/fire/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,916,5]
    function api:modifier/attack/fire/remove

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,916,5]
    function api:modifier/defense/water/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-039400000005

# フルセット解除
    execute if entity @s[tag=PF.Fullset] run function asset:artifact/0915.flame_hunter_hat/trigger/fullset/dis_equip