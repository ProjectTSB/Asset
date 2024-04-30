#> asset:effect/0220.dream_of_burning_butterfly/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0220.dream_of_burning_butterfly/given/
#   asset:effect/0220.dream_of_burning_butterfly/re-given/

# (Stack × 5)%の火攻撃補正を付与
    data modify storage api: Argument.UUID set value [I;1,3,220,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/fire/add
