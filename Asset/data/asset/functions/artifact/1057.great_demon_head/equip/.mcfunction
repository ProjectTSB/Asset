#> asset:artifact/1057.great_demon_head/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1057/equip/


# 演出
    execute positioned ~ ~1.6 ~ run function asset:artifact/1057.great_demon_head/equip/common/equip_vfx

# 物理攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,1057,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 物理耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,1057,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# 魔法攻撃-5%
    data modify storage api: Argument.UUID set value [I;1,1,1057,6]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# 魔法耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,1057,6]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 装備時共通処理
    function asset:artifact/1057.great_demon_head/equip/common/equip
