#> asset:effect/0313.firesprint/modfier/add
#
#
#
# @within function asset:effect/0313.firesprint/**

# 移動速度を上げる
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-013900000000 "313" 0.1 multiply


# 攻撃補正を付与(火+X%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/fire/add

# 防御補正を付与(火+X%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/fire/add

# 攻撃補正を付与（水-1000%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add

# 攻撃補正を付与（雷-1000%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add
