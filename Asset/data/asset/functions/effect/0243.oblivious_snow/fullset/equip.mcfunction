#> asset:effect/0243.oblivious_snow/fullset/equip
# @within function asset:effect/0243.oblivious_snow/*given/

# 補正
    # 水攻撃+25%
        data modify storage api: Argument.UUID set value [I;1,3,243,0]
        data modify storage api: Argument.Amount set value 0.25
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/water/add

    # MP回復量-15%
        data modify storage api: Argument.UUID set value [I;1,3,243,0]
        data modify storage api: Argument.Amount set value -0.15
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/receive_heal/add

# 演出
    particle snowflake ~ ~1.2 ~ 1 0.6 1 0.2 250 normal @a
    particle snowflake ~ ~1.2 ~ 1 0.6 1 0.4 250 normal @a
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.0 0
    playsound ogg:mob.vex.death2 player @a ~ ~ ~ 0.5 0.4
    playsound ogg:mob.vex.idle3 player @a ~ ~ ~ 0.5 0.2
