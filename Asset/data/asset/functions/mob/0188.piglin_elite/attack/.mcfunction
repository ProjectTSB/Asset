#> asset:mob/0188.piglin_elite/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/188/attack

# バニラじゃなかったらreturn
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
    data modify storage api: Argument.Damage set value 12
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
