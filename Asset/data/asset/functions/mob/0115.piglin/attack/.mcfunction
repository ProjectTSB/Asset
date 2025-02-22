#> asset:mob/0115.piglin/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/115/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail
    
# ダメージ
    data modify storage api: Argument.Damage set value 4.5d
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
