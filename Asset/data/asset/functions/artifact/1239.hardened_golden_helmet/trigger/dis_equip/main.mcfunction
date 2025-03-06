#> asset:artifact/1239.hardened_golden_helmet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1239.hardened_golden_helmet/trigger/dis_equip/

# 防具
    attribute @s generic.armor modifier remove 1-0-1-0-4d700000006
# 防具強度
    # attribute @s generic.armor_toughness modifier remove 1-0-1-0-4d700000006
# KB耐性
    # attribute @s generic.knockback_resistance modifier remove 1-0-1-0-4d700000006
# 被ダメージ軽減
    data modify storage api: Argument.UUID set value [I;1,1,1239,6]
    function api:modifier/defense/base/remove
