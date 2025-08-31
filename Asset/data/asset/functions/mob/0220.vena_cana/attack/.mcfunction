#> asset:mob/0220.vena_cana/attack/
#
# Mobの攻撃時の処理 実行者はプレイヤー
#
# @within function asset:mob/alias/220/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:block.conduit.ambient hostile @a ~ ~ ~ 0.7 0.8 0
    execute at @p[tag=Victim,distance=..6] run particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 0.6 0.3 0.6 0 30 normal @a

# ダメージ
    data modify storage api: Argument.Damage set value 41f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって鎮静化された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって脈が止まってしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# 難易度の値を取得
    function api:global_vars/get_difficulty

# (難易度の値)Lvの沈潜エフェクトを付与
    data modify storage api: Argument.ID set value 608
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..6] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
