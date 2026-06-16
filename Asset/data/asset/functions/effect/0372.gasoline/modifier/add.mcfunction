#> asset:effect/0372.gasoline/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0372.gasoline/given/

# 火耐性低下
    data modify storage api: Argument.UUID set value [I;1,3,372,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/fire/add
