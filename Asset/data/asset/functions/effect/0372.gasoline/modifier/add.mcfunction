#> asset:effect/0372.gasoline/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0372.gasoline/given/

# 火耐性低下
    data modify storage api: Argument.UUID set value [I;1,3,372,0]
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/defense/fire/add
