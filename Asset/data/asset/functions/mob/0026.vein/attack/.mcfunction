#> asset:mob/0026.vein/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/26/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1.7 0
    execute at @p[tag=Victim] run particle dust 0.149 0.682 0.741 1 ~ ~ ~ 0.6 0.6 0.6 0 20 normal @a

# ダメージ設定
    data modify storage api: Argument.Damage set value 3.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって鎮静化された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって脈が止まってしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 与ダメージ低下(ID:1)を付与
# Stack = 難易度値
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 1
    data modify storage api: Argument.Duration set value 100
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
