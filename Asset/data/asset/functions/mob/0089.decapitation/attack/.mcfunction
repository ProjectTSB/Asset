#> asset:mob/0089.decapitation/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/89/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute as @p[tag=Victim] at @s run particle block redstone_block ~ ~ ~ 0.1 0 0.1 0 10
    playsound minecraft:entity.evoker_fangs.attack hostile @a ~ ~ ~ 1 1.5

# 何故かこうするとプレイヤーと同じ剣の降り方をする
    item replace entity @s weapon with stick{CustomModelData:20022}

# 被回復低下
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 14
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    data modify storage api: Argument.Duration set value 200
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
