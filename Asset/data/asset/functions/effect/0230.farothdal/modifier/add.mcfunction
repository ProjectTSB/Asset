#> asset:effect/0230.farothdal/modifier/add
#
#
#
# @within function asset:effect/0230.farothdal/tick/

# 移動速度
    attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00e600000000 "6E.MovementSpeed" 0.30 multiply
# 攻撃力
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    data modify storage api: Argument.Amount set value 0.10
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
# 防御力
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    data modify storage api: Argument.Amount set value -0.10
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# フラグ
    data modify storage asset:context this.Sprint set value true
