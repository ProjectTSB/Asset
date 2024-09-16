#> asset:effect/0231.wandering_dream/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0231.wandering_dream/given/
#   asset:effect/0231.wandering_dream/re-given/

# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,3,231,0]
    data modify storage api: Argument.Amount set value 0.12
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/magic/add

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,3,231,0]
    data modify storage api: Argument.Amount set value 0.12
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add