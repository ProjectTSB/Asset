#> asset:artifact/0561.solitariness/attack_melee/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0561.solitariness/attack_melee/dis_equip/

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,561,3]
    function api:modifier/max_health/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-023100000003
