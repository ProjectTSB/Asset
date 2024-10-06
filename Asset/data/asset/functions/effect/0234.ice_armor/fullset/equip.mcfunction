#> asset:effect/0234.ice_armor/fullset/equip
# @within function asset:effect/0234.ice_armor/*given/

# 水攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,3,234,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,3,234,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 演出
    particle falling_dust diamond_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    particle falling_dust snow_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.6 0
