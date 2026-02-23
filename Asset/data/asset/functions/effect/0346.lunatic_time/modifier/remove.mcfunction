#> asset:effect/0346.lunatic_time/modifier/remove
#
#
#
# @within function
#   asset:effect/0346.lunatic_time/end/
#   asset:effect/0346.lunatic_time/remove/

# 魔法攻撃補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/attack/magic/remove

# 回復補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/mp_regen/remove
