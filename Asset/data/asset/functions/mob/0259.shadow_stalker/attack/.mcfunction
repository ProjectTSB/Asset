#> asset:mob/0259.shadow_stalker/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/259/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
# 暗闇ならデスログを追加
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって影に引きずり込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute if entity @s[tag=77.Dark] run data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに暗闇から奇襲された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
