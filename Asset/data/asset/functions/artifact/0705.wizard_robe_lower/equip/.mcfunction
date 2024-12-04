#> asset:artifact/0705.wizard_robe_lower/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/705/equip/


# 魔法耐性+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,705,4]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 魔法攻撃+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,705,4]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# MP回復量+2.5%
    data modify storage api: Argument.UUID set value [I;1,1,705,4]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 物理耐性-2.5%
    data modify storage api: Argument.UUID set value [I;1,1,705,4]
    data modify storage api: Argument.Amount set value -0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# 物理攻撃-2.5%
    data modify storage api: Argument.UUID set value [I;1,1,705,4]
    data modify storage api: Argument.Amount set value -0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 演出
    particle witch ~ ~0.4 ~ 0.3 0.15 0.3 1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1