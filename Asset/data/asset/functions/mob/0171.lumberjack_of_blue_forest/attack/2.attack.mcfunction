#> asset:mob/0171.lumberjack_of_blue_forest/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0171.lumberjack_of_blue_forest/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle soul ~ ~1.2 ~ 0.5 0.4 0.5 0.05 30 normal @a
    execute at @p[tag=Victim,distance=..6] run particle falling_dust warped_stem ~ ~1.2 ~ 0.6 0.4 0.6 0 40 normal @a
    execute at @p[tag=Victim,distance=..6] run particle block warped_stem ~ ~1.2 ~ 0.5 0.3 0.5 0 30 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.ghast.hurt hostile @a ~ ~ ~ 0.5 0.8 0

# ダメージ
    data modify storage lib: Argument.Damage set value 14f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって蒼い森に取り込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって魂を伐り取られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function lib:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
    function lib:damage/reset

# 難易度値を取得
    function api:global_vars/get_difficulty

# 難易度値をStackに代入し、デバフを付与
    data modify storage api: Argument.ID set value 604
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..6] run function api:entity/mob/effect/give
