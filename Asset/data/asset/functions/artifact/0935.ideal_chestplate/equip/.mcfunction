#> asset:artifact/0935.ideal_chestplate/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/935/equip/


# 全耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,935,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 魔法攻撃
    data modify storage api: Argument.UUID set value [I;1,1,935,5]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,1,935,5]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~1.2 ~ run function asset:artifact/0935.ideal_chestplate/equip/vfx
