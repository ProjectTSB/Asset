#> asset:effect/0259.virtual_image/modfier/add
#
# バフを付与する
#
# @within function asset:effect/0259.virtual_image/given/

# 最大体力+16%
    data modify storage api: Argument.UUID set value [I;1,3,259,0]
    data modify storage api: Argument.Amount set value 0.16
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/max_health/add
