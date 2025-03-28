#> asset:effect/0263.chivalry_of_ruin/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0263.chivalry_of_ruin/given/
#   asset:effect/0263.chivalry_of_ruin/re-given/

# 属性攻撃+(Stack)%
    data modify storage api: Argument.UUID set value [1,3,263,0]
    execute store result storage api: Argument.Amount double 0.03 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 属性耐性-(Stack)%
    data modify storage api: Argument.UUID set value [1,3,263,0]
    execute store result storage api: Argument.Amount double -0.01 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

#tellraw @a [{"storage":"asset:context","nbt":"Stack"},{"text":"stack"}]
