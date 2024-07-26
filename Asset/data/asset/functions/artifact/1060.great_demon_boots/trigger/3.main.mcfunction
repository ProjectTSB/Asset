#> asset:artifact/1060.great_demon_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1060.great_demon_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.2 ~ run function asset:artifact/1057.great_demon_head/trigger/common/equip_vfx

# 物理攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,1060,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 物理耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,1060,3]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# 魔法攻撃-5%
    data modify storage api: Argument.UUID set value [I;1,1,1060,3]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# 魔法耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,1060,3]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 装備時共通処理
    function asset:artifact/1057.great_demon_head/trigger/common/equip