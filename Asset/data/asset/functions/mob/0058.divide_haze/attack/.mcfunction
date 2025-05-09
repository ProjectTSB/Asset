#> asset:mob/0058.divide_haze/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/58/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..6] run particle dust 0 0.2 0.1 1 ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a

# ダメージ
    data modify storage api: Argument.Damage set value 3.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって蝕まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 増殖カウント蓄積
    scoreboard players add @s General.Mob.Tick 20
