#> asset:mob/0156.infringement/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/156/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail



# 演出
    execute at @p[tag=Victim,distance=..6] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.145 0.792 0.812 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    playsound minecraft:entity.guardian.hurt hostile @a ~ ~ ~ 0.6 1 0
    playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 0.5 0.7 0
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.4 1.3 0

# 与えるダメージ
    data modify storage api: Argument.Damage set value 41f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# デスログ
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに存在を侵害された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに生命を侵害された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset

# 鈍足を与える
    effect give @p[tag=Victim,distance=..6] slowness 1 3
