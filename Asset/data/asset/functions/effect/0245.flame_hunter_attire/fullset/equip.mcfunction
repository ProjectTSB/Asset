#> asset:effect/0245.flame_hunter_attire/fullset/equip
# @within function asset:effect/0245.flame_hunter_attire/*given/

# 演出
    particle lava ~ ~1.2 ~ 0.8 0.4 0.8 0 30 normal @a
    particle block azalea ~ ~1.7 ~ 0.3 0.2 0.3 0 60 normal @a
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.2 0
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.4 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1 0

# 補正
    # 火攻撃+10%
        data modify storage api: Argument.UUID set value [I;1,3,245,0]
        data modify storage api: Argument.Amount set value 0.1
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/fire/add

    # 火耐性+10%
        data modify storage api: Argument.UUID set value [I;1,3,245,0]
        data modify storage api: Argument.Amount set value 0.1
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/defense/fire/add

    # 移動速度+10%
        attribute @s generic.movement_speed modifier add 1-0-3-0-f500000000 "245.FullsetSpeed" 0.1 multiply_base
