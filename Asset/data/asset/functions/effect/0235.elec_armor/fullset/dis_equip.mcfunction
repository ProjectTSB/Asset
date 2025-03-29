#> asset:effect/0235.elec_armor/fullset/dis_equip
# @within function
#   asset:effect/0235.elec_armor/re-given/
#   asset:effect/0235.elec_armor/remove/

# 雷攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,3,235,0]
    function api:modifier/attack/thunder/remove

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,3,235,0]
    function api:modifier/defense/thunder/remove
