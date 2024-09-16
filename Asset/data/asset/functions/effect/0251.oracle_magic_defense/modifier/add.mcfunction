#> asset:effect/0251.oracle_magic_defense/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0251.oracle_magic_defense/given/

# 魔法耐性+8%
    data modify storage api: Argument.UUID set value [I;1,3,251,0]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/magic/add
