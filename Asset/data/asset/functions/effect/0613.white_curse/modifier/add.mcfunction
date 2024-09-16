#> asset:effect/0613.white_curse/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0613.white_curse/given/
#   asset:effect/0613.white_curse/re-given/

#> Private
# @private
    #declare score_holder $Stack

# 魔法耐性(-12.5 * (Stack + 1))%
    execute store result score $Stack Temporary run data get storage asset:context Stack

    data modify storage api: Argument.UUID set value [I;1,3,613,0]
    execute store result storage api: Argument.Amount double -0.125 run scoreboard players add $Stack Temporary 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/magic/add

# リセット
    scoreboard players reset $Stack Temporary
