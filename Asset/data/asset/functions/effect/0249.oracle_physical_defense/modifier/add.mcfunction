#> asset:effect/0249.oracle_physical_defense/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0249.oracle_physical_defense/given/

# 物理耐性+8%
    data modify storage api: Argument.UUID set value [I;1,3,249,0]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/physical/add
