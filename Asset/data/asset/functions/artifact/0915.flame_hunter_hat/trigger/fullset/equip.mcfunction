#> asset:artifact/0915.flame_hunter_hat/trigger/fullset/equip
#
# フルセット時の処理
#
# @within function
#   asset:artifact/0915.flame_hunter_hat/trigger/3.main
#   asset:artifact/0916.flame_hunter_clothes/trigger/3.main
#   asset:artifact/0917.flame_hunter_clothes/trigger/3.main
#   asset:artifact/0918.flame_hunter_boots/trigger/3.main

# フルセットTagを付与
    tag @s add PF.Fullset

# 火耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,915,0]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 火攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,915,0]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 移動速度+10%
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-039300000000 "915.FullsetSpeed" 0.1 multiply_base