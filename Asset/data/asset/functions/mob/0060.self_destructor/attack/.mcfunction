#> asset:mob/0060.self_destructor/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/60/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# ダメージ
    data modify storage lib: Argument.Damage set value 8.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより粉々になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの衝撃で粉砕された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function lib:damage/modifier
    execute at @p[tag=Victim,distance=..6] run function lib:damage/
    function lib:damage/reset

# 演出
    execute unless block ~ ~ ~ water run playsound entity.tnt.primed hostile @a ~ ~ ~ 1 0.7 0
    execute unless block ~ ~ ~ water run particle smoke ~ ~1.8 ~ 0.3 0.25 0.3 0 15 normal @a
    execute unless block ~ ~ ~ water run particle flame ~ ~1.8 ~ 0.3 0.25 0.3 0 5 normal @a

# 自爆カウント ノーマル以下なら2、ハード以上で4進む
    execute if predicate api:global_vars/difficulty/max/normal unless block ~ ~ ~ water run scoreboard players add @s 1O.ExplodeCnt 2
    execute if predicate api:global_vars/difficulty/min/hard unless block ~ ~ ~ water run scoreboard players add @s 1O.ExplodeCnt 4
