#> asset:artifact/1245.hardened_diamond_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1245.hardened_diamond_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 防具
    attribute @s generic.armor modifier add 1-0-1-0-4dd00000004 "1245.Armor" 6 add
# 防具強度
    attribute @s generic.armor_toughness modifier add 1-0-1-0-4dd00000004 "1245.ArmorToughness" 2 add
# KB耐性
    # attribute @s generic.knockback_resistance modifier add 1-0-1-0-4dd00000004 "1245.KBResist" 0 add
# 被ダメージ軽減
    data modify storage api: Argument.UUID set value [I;1,1,1245,4]
    data modify storage api: Argument.Amount set value 0.015
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add
