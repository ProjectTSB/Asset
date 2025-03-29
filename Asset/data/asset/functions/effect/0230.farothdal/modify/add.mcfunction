#> asset:effect/0230.farothdal/modify/add
#
#
#
# @within function asset:effect/0230.farothdal/given/

# 移動速度を上げる
    attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00e600000000 "230" 0.1 multiply
# 攻撃力
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    data modify storage api: Argument.Amount set value 0.10
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 防御力
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
