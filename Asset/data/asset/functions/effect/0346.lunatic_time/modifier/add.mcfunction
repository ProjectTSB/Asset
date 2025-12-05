#> asset:effect/0346.lunatic_time/modifier/add
#
#
#
# @within function asset:effect/0346.lunatic_time/given/

# 魔法攻撃補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.MagicAttack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/magic/add

# 回復補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.MPHeal
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
