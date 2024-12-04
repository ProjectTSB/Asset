#> asset:effect/0238.raimei/fullset/dis_equip
# @within function
#   asset:effect/0238.raimei/re-given/
#   asset:effect/0238.raimei/remove/

# 雷耐性+9%
    data modify storage api: Argument.UUID set value [I;1,3,238,0]
    function api:modifier/defense/thunder/remove
