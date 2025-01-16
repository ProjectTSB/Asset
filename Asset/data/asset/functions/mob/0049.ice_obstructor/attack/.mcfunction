#> asset:mob/0049.ice_obstructor/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/49/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..32] run particle minecraft:falling_dust diamond_block ~ ~1.75 ~ 0.4 0.4 0.4 1 15
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.8 1.3 0

# デバフ
    execute if predicate api:global_vars/difficulty/min/hard run effect give @p[tag=Victim,distance=..32] slowness 3 1 true
    execute if predicate api:global_vars/difficulty/min/hard run effect give @p[tag=Victim,distance=..32] mining_fatigue 3 1 true

# 引数の設定
    data modify storage api: Argument.Damage set value 5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍結した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 粉雪を設置
    execute at @p[gamemode=survival,tag=Victim,distance=..32] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air
