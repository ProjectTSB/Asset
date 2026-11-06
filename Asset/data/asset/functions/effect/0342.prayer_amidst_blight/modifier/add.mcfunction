#> asset:effect/0342.prayer_amidst_blight/modifier/add
#
#
#
# @within function asset:effect/0342.prayer_amidst_blight/given/

# スタックなんてただの飾りです 偉い人にはそれがわからんのですよ

# 攻撃補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Attack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 回復補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Heal
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add
