#> asset:mob/0114.jewel_hunter/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/114/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


#> Private
# @private
    #declare score_holder $DamageValue

# 演出
    execute at @p[tag=Victim,distance=..6] run particle minecraft:dust 8 1 8 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 50 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:block.amethyst_cluster.fall hostile @a ~ ~ ~ 1 2 0

# 難易度値を取得し、ダメージを計算する
# $DamageValue = 4N + 4
# 後からダメージ数値を変えやすいように4(N + 1)の実装にはしていない
    function api:global_vars/get_difficulty
    execute store result score $DamageValue Temporary run data get storage api: Return.Difficulty 4
    scoreboard players add $DamageValue Temporary 4

# ダメージ
    execute store result storage api: Argument.Damage double 1.0 run scoreboard players get $DamageValue Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
# デスログ
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの宝石の煌めきにやられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの宝石の価値に敗北した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function api:damage/modifier
# 実行
    execute as @p[tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset

# スコアのリセット
    scoreboard players reset $DamageValue Temporary
