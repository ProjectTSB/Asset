#> asset:effect/0423.water_period/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0423.water_period/_/given

# Effect422と424を削除
    data modify storage api: Argument.ID set value 422
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 424
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

## modifier付与
# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,3,423,0]
    data modify storage api: Argument.Amount set value 0.2d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,3,423,0]
    data modify storage api: Argument.Amount set value -0.1d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,3,423,0]
    data modify storage api: Argument.Amount set value -0.1d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add
