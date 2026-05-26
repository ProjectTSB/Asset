#> asset:effect/0360.calamity_bind/modifier/add
#
#
#
# @within function asset:effect/0360.calamity_bind/given/

# 攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Attack
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/attack/base/add

# MP回復
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.MPHeal
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/attack/base/add
