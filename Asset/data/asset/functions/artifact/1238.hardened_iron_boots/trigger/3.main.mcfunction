#> asset:artifact/1238.hardened_iron_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1238.hardened_iron_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 防具
    attribute @s generic.armor modifier add 1-0-1-0-4d600000003 "1238.Armor" 3 add
# 防具強度
    # attribute @s generic.armor_toughness modifier add 1-0-1-0-4d600000003 "1238.ArmorToughness" 0 add
# KB耐性
    # attribute @s generic.knockback_resistance modifier add 1-0-1-0-4d600000003 "1238.KBResist" 0 add
# 被ダメージ軽減
    # data modify storage api: Argument.UUID set value [I;1,1,1238,3]
    # data modify storage api: Argument.Amount set value 0
    # data modify storage api: Argument.Operation set value "multiply_base"
    # function api:modifier/defense/base/add
