#> asset:artifact/0561.solitariness/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0561.solitariness/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,561,3]
    data modify storage api: Argument.Amount set value 4
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/max_health/add

# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-023100000003 "561.Speed" 0.3 multiply_base
