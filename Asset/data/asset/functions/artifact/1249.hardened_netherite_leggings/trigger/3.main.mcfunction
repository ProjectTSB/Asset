#> asset:artifact/1249.hardened_netherite_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1249.hardened_netherite_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 防具
    attribute @s generic.armor modifier add 1-0-1-0-4e100000004 "1249.Armor" 7 add
# 防具強度
    attribute @s generic.armor_toughness modifier add 1-0-1-0-4e100000004 "1249.ArmorToughness" 4 add
# KB耐性
    attribute @s generic.knockback_resistance modifier add 1-0-1-0-4e100000004 "1249.KBResist" 0.15 add
# 被ダメージ軽減
    data modify storage api: Argument.UUID set value [I;1,1,1249,4]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add
