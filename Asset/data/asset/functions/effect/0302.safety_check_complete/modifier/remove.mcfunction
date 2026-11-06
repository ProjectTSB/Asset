#> asset:effect/0302.safety_check_complete/modifier/remove
#
#
#
# @within function
#   asset:effect/0302.safety_check_complete/end/
#   asset:effect/0302.safety_check_complete/remove/

# 耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/defense/base/remove
