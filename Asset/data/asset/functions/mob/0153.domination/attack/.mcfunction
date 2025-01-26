#> asset:mob/0153.domination/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/153/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @a[tag=Victim] run playsound block.anvil.land hostile @a ~ ~ ~ 1 1.3

# 与えるダメージ
    data modify storage api: Argument.Damage set value 38f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 難易度値を取得
    function api:global_vars/get_difficulty

# プレイヤーを支配デバフを付与
# 効果時間 (20 × 難易度値)tick
# MobUUIDをFieldOverrideに入れておく
    data modify storage api: Argument.ID set value 603
    execute store result storage api: Argument.Duration int 20 run data get storage api: Return.Difficulty
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
