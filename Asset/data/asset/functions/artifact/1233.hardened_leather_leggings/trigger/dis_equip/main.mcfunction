#> asset:artifact/1233.hardened_leather_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1233.hardened_leather_leggings/trigger/dis_equip/

# 防具
    attribute @s generic.armor modifier remove 1-0-1-0-4d100000004
# 防具強度
    # attribute @s generic.armor_toughness modifier remove 1-0-1-0-4d100000004
# KB耐性
    # attribute @s generic.knockback_resistance modifier remove 1-0-1-0-4d100000004
# 被ダメージ軽減
    # data modify storage api: Argument.UUID set value [I;1,1,1233,4]
    # function api:modifier/defense/base/remove
