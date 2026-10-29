#> asset:effect/0386.pk_insight/modifier/
#
#
#
# @within function asset:effect/0386.pk_insight/**

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,386,0]
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Debuff.Defense
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 移動速度
    function asset:effect/0386.pk_insight/modifier/add/m with storage asset:context this.Modifier.Debuff
