#> asset:effect/0001.attack_base_debuff/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0001.attack_base_debuff/given/
#   asset:effect/0001.attack_base_debuff/re-given/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,1,0]
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
