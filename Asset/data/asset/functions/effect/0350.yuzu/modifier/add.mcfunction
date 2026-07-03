#> asset:effect/0350.yuzu/modifier/add
#
#
#
# @within function asset:effect/0350.yuzu/given/

# 最大MP
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/max_mp/add
