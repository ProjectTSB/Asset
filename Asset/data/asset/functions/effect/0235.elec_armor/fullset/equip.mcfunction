#> asset:effect/0235.elec_armor/fullset/equip
# @within function asset:effect/0235.elec_armor/*given/

# 雷攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,3,235,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,3,235,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 演出
    particle dust 1 1 0 1 ~ ~1.2 ~ 0.4 0.5 0.4 0 25 normal @a
    particle firework ~ ~1.2 ~ 0.4 0.5 0.4 0 15 normal @a
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.7 0
