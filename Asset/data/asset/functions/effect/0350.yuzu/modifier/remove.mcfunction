#> asset:effect/0350.yuzu/modifier/remove
#
#
#
# @within function
#   asset:effect/0350.yuzu/end/
#   asset:effect/0350.yuzu/remove/

# 最大MP
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/max_mp/remove
