#> asset:artifact/1039.flame_devil_chest/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1039/equip/


# 演出
    execute positioned ~ ~1.2 ~ run function asset:artifact/1038.flame_devil_head/equip/common/equip_vfx

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,1039,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 水攻撃-10%
    data modify storage api: Argument.UUID set value [I;1,1,1039,5]
    data modify storage api: Argument.Amount set value -0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 魔法攻撃+5%
    # data modify storage api: Argument.UUID set value [I;1,1,1039,5]
    # data modify storage api: Argument.Amount set value 0.05
    # data modify storage api: Argument.Operation set value "multiply_base"
    # function api:modifier/attack/magic/add

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,1039,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# MP回復量+2%
    data modify storage api: Argument.UUID set value [I;1,1,1039,5]
    data modify storage api: Argument.Amount set value 0.02
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 装備時共通処理
    function asset:artifact/1038.flame_devil_head/equip/common/equip
