#> asset:artifact/1240.hardened_golden_chestplate/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1240.hardened_golden_chestplate/trigger/dis_equip/

# 防具
    attribute @s generic.armor modifier remove 1-0-1-0-4d800000005
# 防具強度
    # attribute @s generic.armor_toughness modifier remove 1-0-1-0-4d800000005
# KB耐性
    # attribute @s generic.knockback_resistance modifier remove 1-0-1-0-4d800000005
# 被ダメージ軽減
    data modify storage api: Argument.UUID set value [I;1,1,1240,5]
    function api:modifier/defense/base/remove
