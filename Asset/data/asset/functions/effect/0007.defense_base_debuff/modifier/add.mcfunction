#> asset:effect/0007.defense_base_debuff/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0007.defense_base_debuff/given/
#   asset:effect/0007.defense_base_debuff/re-given/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,-1,0]
    data modify storage api: Argument.UUID[2] set from storage asset:context id
    execute store result storage api: Argument.Amount double -0.10 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
