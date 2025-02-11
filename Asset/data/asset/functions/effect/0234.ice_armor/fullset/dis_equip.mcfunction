#> asset:effect/0234.ice_armor/fullset/dis_equip
# @within function
#   asset:effect/0234.ice_armor/re-given/
#   asset:effect/0234.ice_armor/remove/

# 水攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,3,234,0]
    function api:modifier/attack/water/remove

# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,3,234,0]
    function api:modifier/defense/water/remove
