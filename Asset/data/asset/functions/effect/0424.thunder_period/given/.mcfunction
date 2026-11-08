#> asset:effect/0424.thunder_period/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0424.thunder_period/_/given

# Effect422と423を削除
    data modify storage api: Argument.ID set value 422
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 423
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

## modifier付与
# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,3,424,0]
    data modify storage api: Argument.Amount set value 0.2d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,3,424,0]
    data modify storage api: Argument.Amount set value -0.1d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,3,424,0]
    data modify storage api: Argument.Amount set value -0.1d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 演出
    particle electric_spark ~ ~1.5 ~ 0.1 0.5 0.1 0 15
    particle dust 1 0.8 0 0.75 ~ ~1.5 ~ 0.2 0.5 0.2 0 25
    playsound block.copper_trapdoor.open player @a ~ ~ ~ 1.0 0.5
    playsound block.trial_spawner.detect_player player @a ~ ~ ~ 0.8 0.7
    playsound item.lodestone_compass.lock player @a ~ ~ ~ 0.8 0.5
    playsound item.trident.return player @a ~ ~ ~ 0.8 0.5
