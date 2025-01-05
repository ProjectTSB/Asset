#> asset:artifact/1040.flame_devil_legs/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1040.flame_devil_legs/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.6 ~ run function asset:artifact/1038.flame_devil_head/trigger/common/equip_vfx

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 水攻撃-10%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 魔法攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# MP回復量+2%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    data modify storage api: Argument.Amount set value 0.02
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 装備時共通処理
    function asset:artifact/1038.flame_devil_head/trigger/common/equip