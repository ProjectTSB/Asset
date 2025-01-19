#> asset:mob/0259.shadow_stalker/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/259/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
