#> asset:effect/0233.flame_armor/fullset/dis_equip
# @within function
#   asset:effect/0233.flame_armor/re-given/
#   asset:effect/0233.flame_armor/remove/

# 火攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,3,233,0]
    function api:modifier/attack/fire/remove

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,3,233,0]
    function api:modifier/defense/fire/remove
