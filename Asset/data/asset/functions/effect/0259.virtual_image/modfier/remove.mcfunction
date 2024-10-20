#> asset:effect/0259.virtual_image/modfier/remove
#
# バフを解除する
#
# @within function
#   asset:effect/0259.virtual_image/end/
#   asset:effect/0259.virtual_image/remove/

# 最大体力+16%
    data modify storage api: Argument.UUID set value [I;1,3,259,0]
    function api:modifier/max_health/remove
