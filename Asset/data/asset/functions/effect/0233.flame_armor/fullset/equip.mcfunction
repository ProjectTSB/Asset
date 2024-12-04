#> asset:effect/0233.flame_armor/fullset/equip
# @within function asset:effect/0233.flame_armor/*given/

# 火攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,3,233,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,3,233,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 演出
    particle flame ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.2 0
