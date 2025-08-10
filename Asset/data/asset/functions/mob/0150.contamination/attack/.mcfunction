#> asset:mob/0150.contamination/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/150/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ガス召喚
    execute at @p[tag=Victim,distance=..32] run function asset:mob/0150.contamination/summon_gas

# ダメージ
    data modify storage api: Argument.Damage set value 41f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..32] run function api:damage/
    function api:damage/reset
