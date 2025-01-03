#> asset:mob/0417.astro_skeleton/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/417/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute as @p[tag=Victim] at @s run particle dust 0.925 0.975 0.2 1 ~ ~ ~ 0.5 1 0.5 0 30
    playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.65

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 37.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって射抜かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[tag=Victim] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 攻撃力低下エフェクト付与
    data modify storage api: Argument set value {ID:51,Duration:200}
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty 1
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 耐性低下エフェクト付与
    data modify storage api: Argument set value {ID:57,Duration:200}
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty 1
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
