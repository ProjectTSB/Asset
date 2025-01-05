#> asset:effect/0214.quick_charge/remove_modifier
#
# 補正を削除
#
# @within function
#   asset:effect/0214.quick_charge/end/
#   asset:effect/0214.quick_charge/remove/

# 雷攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,3,214,0]
    function api:modifier/attack/thunder/remove

# MP回復量+15%
    data modify storage api: Argument.UUID set value [I;1,3,214,0]
    function api:modifier/mp_regen/remove