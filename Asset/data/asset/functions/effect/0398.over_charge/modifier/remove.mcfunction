#> asset:effect/0398.over_charge/modifier/remove
#
#
#
# @within function
#   asset:effect/0398.over_charge/end/
#   asset:effect/0398.over_charge/remove/

# 雷攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/attack/thunder/remove
