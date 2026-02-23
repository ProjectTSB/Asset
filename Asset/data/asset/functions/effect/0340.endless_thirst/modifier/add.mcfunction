#> asset:effect/0340.endless_thirst/modifier/add
#
#
#
# @within function asset:effect/0340.endless_thirst/given/

# 攻撃補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.AttackModifier
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 与回復補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.HealModifier
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add
