#> asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/damage
#
# ダメージ処理
#
# @within function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/loop

#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：難易度数値 × 補正値 + 基礎
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 10
    scoreboard players add $DamageTemp Temporary 32

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの魔弾によって貫かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージを与える
        function api:damage/modifier
        execute as @a[tag=AX.Temp.Target,distance=..5] run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary

# 着弾タグを消す
    tag @a[tag=AX.Temp.Target,distance=..5] remove AX.Temp.Target
