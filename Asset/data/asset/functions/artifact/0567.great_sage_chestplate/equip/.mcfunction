#> asset:artifact/0567.great_sage_chestplate/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/567/equip/


# 魔法耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 魔法攻撃+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# MP回復量+10%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 物理耐性-10%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    data modify storage api: Argument.Amount set value -0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# 物理攻撃-17.5%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 演出
    particle end_rod ~ ~1.3 ~ 0.3 0.1 0.3 0.1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1

# セット効果用のファンクション実行（実行は頭のほうで）
    execute if data storage asset:context id.all{head:566,chest:567,legs:568,feet:569} run function asset:artifact/0566.great_sage_helmet/equip/fullset/equip
