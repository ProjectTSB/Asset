#> asset:effect/0240.bless_of_deep_sea_coral/fullset/dis_equip
# @within function
#   asset:effect/0240.bless_of_deep_sea_coral/re-given/
#   asset:effect/0240.bless_of_deep_sea_coral/remove/

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,3,240,0]
    function api:modifier/attack/water/remove
