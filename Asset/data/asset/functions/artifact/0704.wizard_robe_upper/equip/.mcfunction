#> asset:artifact/0704.wizard_robe_upper/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/704/equip/


# 魔法耐性+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 魔法攻撃+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# 演出
    particle witch ~ ~1.3 ~ 0.3 0.25 0.3 1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1
