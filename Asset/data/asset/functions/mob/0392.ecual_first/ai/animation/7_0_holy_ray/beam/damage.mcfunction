#> asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/damage
#
# ダメージ処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/loop

#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：5N + 5
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 3
    scoreboard players add $DamageTemp Temporary 8

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの光線により身を焼かれて息絶えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージを与える
        function api:damage/modifier
        execute as @a[tag=AW.Temp.Target,distance=..5] run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary

# 着弾タグを消す
    tag @a[tag=AW.Temp.Target,distance=..5] remove AW.Temp.Target
