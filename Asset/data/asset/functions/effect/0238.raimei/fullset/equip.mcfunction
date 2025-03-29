#> asset:effect/0238.raimei/fullset/equip
# @within function asset:effect/0238.raimei/*given/

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,3,238,0]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add
# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00ee00000000 "238.Raimei" 0.40 multiply_base

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 0
    playsound block.end_portal.spawn player @a ~ ~ ~ 1 1
