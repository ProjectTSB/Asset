#> asset:mob/0151.recombined/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/151/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
    data modify storage api: Argument.Damage set value 41f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 演出
    playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 0.3 1.6
    playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 0.4 2

# デバフを付与
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 57
    execute store result storage api: Argument.Stack int 4 run data get storage api: Return.Difficulty 1
    data modify storage api: Argument.Duration set value 60
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 腕を振る
    item replace entity @s weapon with iron_axe
