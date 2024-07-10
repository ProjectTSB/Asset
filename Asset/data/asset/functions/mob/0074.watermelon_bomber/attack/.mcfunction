#> asset:mob/0074.watermelon_bomber/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0074.watermelon_bomber/_/attack

# 演出
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.splash hostile @a ~ ~ ~ 0.8 0.8 0
    execute at @p[tag=Victim,distance=..6] run particle dust 1 0.141 0.141 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.173 1 0.243 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.173 1 0.243 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a

# ダメージ
    data modify storage api: Argument.Damage set value 16.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってスイカに取り込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってスイカの栄養となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
