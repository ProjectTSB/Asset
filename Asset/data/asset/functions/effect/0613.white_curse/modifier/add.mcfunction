#> asset:effect/0613.white_curse/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0613.white_curse/given/
#   asset:effect/0613.white_curse/re-given/

# 魔法耐性(-7.5 * Stack)%
    data modify storage api: Argument.UUID set value [I;1,3,613,0]
    execute store result storage api: Argument.Amount double -0.075 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/magic/add
