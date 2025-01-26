#> asset:effect/0219.blood_eater/modifier/add
#
#
#
# @within function
#   asset:effect/0219.blood_eater/given/

# 攻撃補正を付与
    data modify storage api: Argument.UUID set value [I;1,3,219,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
