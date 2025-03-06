#> asset:artifact/1231.hardened_leather_helmet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1231.hardened_leather_helmet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 防具
    attribute @s generic.armor modifier add 1-0-1-0-4cf00000006 "1231.Armor" 1.5 add
# 防具強度
    # attribute @s generic.armor_toughness modifier add 1-0-1-0-4cf00000006 "1231.ArmorToughness" 0 add
# KB耐性
    # attribute @s generic.knockback_resistance modifier add 1-0-1-0-4cf00000006 "1231.KBResist" 0 add
# 被ダメージ軽減
    # data modify storage api: Argument.UUID set value [I;1,1,1231,6]
    # data modify storage api: Argument.Amount set value 0
    # data modify storage api: Argument.Operation set value "multiply_base"
    # function api:modifier/defense/base/add
