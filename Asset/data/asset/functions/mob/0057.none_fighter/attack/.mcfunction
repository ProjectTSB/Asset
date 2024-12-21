#> asset:mob/0057.none_fighter/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/57/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle minecraft:block white_concrete ~ ~1.2 ~ 1.0 0.5 1.0 0 40 normal @a
    execute at @p[tag=Victim] run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 1 1.2 0

# ダメージ
    data modify storage lib: Argument.Damage set value 8.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sとの闘いに敗北した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより殺された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function lib:damage/modifier
    execute as @p[tag=Victim,distance=..2.5] run function lib:damage/
    function lib:damage/reset
