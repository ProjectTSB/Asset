#> asset:artifact/1122.guardian_ironlump/trigger/removal
#
#
#
# @within function
#    asset:artifact/1122.guardian_ironlump/trigger/3.main
#    asset:artifact/1122.guardian_ironlump/trigger/dis_equip/main

# attribute削除
    attribute @s minecraft:generic.armor modifier remove 1-0-1-0-46200000007
    attribute @s minecraft:generic.attack_knockback modifier remove 1-0-1-0-46200000007

# 防御力+5%
    data modify storage api: Argument.UUID set value [I;1,1,1122,6]
    function api:modifier/defense/base/remove

say リセットしたよ
