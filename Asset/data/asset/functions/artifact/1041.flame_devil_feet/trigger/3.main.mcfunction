#> asset:artifact/1041.flame_devil_feet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1041.flame_devil_feet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# 演出
    execute positioned ~ ~0.2 ~ run function asset:artifact/1038.flame_devil_head/trigger/common/equip_vfx

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,1041,3]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 水攻撃-10%
    data modify storage api: Argument.UUID set value [I;1,1,1041,3]
    data modify storage api: Argument.Amount set value -0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 魔法攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,1041,3]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# 魔法耐性+5%
    # data modify storage api: Argument.UUID set value [I;1,1,1041,3]
    # data modify storage api: Argument.Amount set value 0.05
    # data modify storage api: Argument.Operation set value "multiply_base"
    # function api:modifier/defense/magic/add

# MP回復量+2%
    data modify storage api: Argument.UUID set value [I;1,1,1041,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 装備時共通処理
    function asset:artifact/1038.flame_devil_head/trigger/common/equip
