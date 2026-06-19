#> asset:effect/0011.defense_water_debuff/modifier/add
#
#
#
# @within function
#   asset:effect/0011.defense_water_debuff/given/
#   asset:effect/0011.defense_water_debuff/re-given/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,-1,0]
    data modify storage api: Argument.UUID[2] set from storage asset:context originID
    execute store result storage api: Argument.Amount double -0.10 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/water/add
