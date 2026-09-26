#> asset:effect/0398.over_charge/modifier/add
#
#
#
# @within function asset:effect/0398.over_charge/given/

# 雷攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add
