#> asset:effect/0249.oracle_physical_defense/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0249.oracle_physical_defense/end/
#   asset:effect/0249.oracle_physical_defense/remove/

# 物理耐性+8%
    data modify storage api: Argument.UUID set value [I;1,3,249,0]
    function api:modifier/defense/physical/remove
