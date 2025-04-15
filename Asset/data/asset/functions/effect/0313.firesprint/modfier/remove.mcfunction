#> asset:effect/0313.firesprint/modfier/remove
#
#
#
# @within function asset:effect/0313.firesprint/**

# 移動速度を上げる
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-013900000000

# 攻撃補正を付与(火+50%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    function api:modifier/attack/fire/remove

# 防御補正を付与(火+50%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    function api:modifier/defense/fire/remove

# 攻撃補正を付与（水-1000%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    function api:modifier/attack/water/remove

# 攻撃補正を付与（雷-1000%)
    data modify storage api: Argument.UUID set value [I;1,3,313,0]
    function api:modifier/attack/thunder/remove
