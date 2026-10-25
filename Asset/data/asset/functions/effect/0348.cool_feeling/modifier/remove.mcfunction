#> asset:effect/0348.cool_feeling/modifier/remove
#
#
#
# @within function
#   asset:effect/0348.cool_feeling/end/
#   asset:effect/0348.cool_feeling/re-given/
#   asset:effect/0348.cool_feeling/remove/

# 水攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/attack/water/remove
