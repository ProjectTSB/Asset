#> asset:mob/0147.prismarine_slayer/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/147/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 自身に移動速度上昇
    effect give @s speed 2 1 true

# プレイヤーと同じ剣(鎌)の振り方
    item replace entity @s weapon.mainhand with stick{CustomModelData:20048}

# 演出
    execute at @p[tag=Victim,distance=..6] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.078 0.471 0.486 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.guardian.attack hostile @a ~ ~ ~ 0.8 1.5 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.splash.high_speed hostile @a ~ ~ ~ 0.4 1.7 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 0.4 1.4 0

# 与えるダメージ
    data modify storage api: Argument.Damage set value 41f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# デスログ
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって斬り裂かれ海の藻屑となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset
