#> asset:mob/0148.prismarine_atlatl/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/148/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim,distance=..32] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..32] run particle dust 0.145 0.792 0.812 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:entity.guardian.attack hostile @a ~ ~ ~ 0.8 1.5 0
    execute at @p[tag=Victim,distance=..32] run playsound entity.player.splash.high_speed hostile @a ~ ~ ~ 0.4 1.7 0
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 0.5 0 0

# 与えるダメージ
    data modify storage api: Argument.Damage set value 34f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# デスログ
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって貫かれ海の藻屑となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function api:damage/
# リセット
    function api:damage/reset
