#> asset:effect/0238.raimei/fullset/dis_equip
# @within function
#   asset:effect/0238.raimei/re-given/
#   asset:effect/0238.raimei/remove/

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,3,238,0]
    function api:modifier/defense/thunder/remove
# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00ee00000000
