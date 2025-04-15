#> asset:effect/0014.receive_heal_debuff/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0014.receive_heal_debuff/given/
#   asset:effect/0014.receive_heal_debuff/re-given/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,-1,0]
    data modify storage api: Argument.UUID[2] set from storage asset:context id
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
