#> asset:artifact/0710.mage_boots/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/710/equip/


# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,1,710,3]
    data modify storage api: Argument.Amount set value 0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 魔法攻撃
    data modify storage api: Argument.UUID set value [I;1,1,710,3]
    data modify storage api: Argument.Amount set value 0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,710,3]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,1,710,3]
    data modify storage api: Argument.Amount set value -0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,1,710,3]
    data modify storage api: Argument.Amount set value -0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 演出
    particle witch ~ ~0.3 ~ 0.3 0.1 0.3 1 10 normal @a
    particle enchant ~ ~0.3 ~ 0.4 0.1 0.4 0 30 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 0 0
