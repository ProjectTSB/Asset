#> asset:effect/0244.aurora_armor/fullset/dis_equip
# @within function
#   asset:effect/0244.aurora_armor/re-given/
#   asset:effect/0244.aurora_armor/remove/

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,3,244,0]
    function api:modifier/attack/thunder/remove

# MP回復
    data modify storage api: Argument.UUID set value [I;1,3,244,0]
    function api:modifier/mp_regen/remove
