#> asset:artifact/0915.flame_hunter_hat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0915.flame_hunter_hat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:915,chest:916,legs:917,feet:918} run function asset:artifact/0915.flame_hunter_hat/trigger/vfx

# 火耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 火攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 水耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,915,6]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 移動速度+5%
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-039300000001 "915.Speed" 0.05 multiply_base

# フルセット処理
    execute if data storage asset:context id.all{head:915,chest:916,legs:917,feet:918} run function asset:artifact/0915.flame_hunter_hat/trigger/fullset/equip