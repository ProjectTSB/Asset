#> asset:artifact/1085.mia_tia_zen_luc/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1085.mia_tia_zen_luc/trigger/dis_equip/

# 魔法攻撃戻す
    data modify storage api: Argument.UUID set value [I;1,1,1085,2]
    function api:modifier/attack/magic/remove

#移動速度戻す
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-0-43d00000002
