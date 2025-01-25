#> asset:artifact/0561.solitariness/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/561/attack_melee/


# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,561,3]
    data modify storage api: Argument.Amount set value 4
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/max_health/add

# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-023100000003 "561.Speed" 0.3 multiply_base
