#> asset:mob/0142.honey_soldier/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/142/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle falling_honey ~ ~1.2 ~ 0.4 0.4 0.4 0 30 normal @a
    execute at @p[tag=Victim] run particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 20 normal
    execute at @p[tag=Victim] run playsound minecraft:block.honey_block.place hostile @a ~ ~ ~ 0.7 1 0

# バニラデバフ
    effect give @p[tag=Victim] mining_fatigue 3 1 true
    effect give @p[tag=Victim] poison 3 1 true

# 与ダメージ低下Lv2(ID:51)を付与
# Stack = 難易度値 * 2
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 51
    data modify storage api: Argument.Duration set value 60
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 与えるダメージ
    data modify storage api: Argument.Damage set value 41f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってべとべとに斬り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにハチの巣の材料にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
