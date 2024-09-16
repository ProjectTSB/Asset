#> asset:effect/0253.purifying_indigo/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0253.purifying_indigo/given/

# 水攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,3,253,0]
    data modify storage api: Argument.Amount set value 0.10
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add
