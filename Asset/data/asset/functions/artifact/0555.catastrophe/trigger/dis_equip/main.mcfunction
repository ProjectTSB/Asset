#> asset:artifact/0555.catastrophe/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0555.catastrophe/trigger/dis_equip/

# フルセット解除処理
    execute if entity @s[tag=FE.Fullset] run function asset:artifact/0554.catastrophe/trigger/fullset/dis_equip

# 最大体力-10%
    data modify storage api: Argument.UUID set value [I;1,1,555,5]
    function api:modifier/max_health/remove

# ノクバ耐性+2
    attribute @s generic.knockback_resistance modifier remove 00000001-0000-0001-0000-022b00000005
