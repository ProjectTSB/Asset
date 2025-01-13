#> asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/damage
#
# VFX処理とダメージ処理
#
# @within function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/

#> Temp
# @private
    #declare score_holder $AX.X

# マーカーを90度だけ横に回転させつつ、用意する
    tp 0-0-0-0-0 ~ ~ ~ ~90 ~

# Y軸をまず設定する（-15度～15度）
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.001 run random value -15000..15000

# X軸を取得する
    execute store result score $AX.X Temporary run data get entity 0-0-0-0-0 Rotation[0] 1000
    execute store result score $AX.Temp Temporary run random value -15000..15000
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.001 run scoreboard players operation $AX.X Temporary += $AX.Temp Temporary

# スコア群をリセット
    scoreboard players reset $AX.X Temporary
    scoreboard players reset $AX.Temp Temporary

# マーカーの位置でVFX起動
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/vfx

# マーカーを90度だけ横に回転させつつ、用意する
    tp 0-0-0-0-0 ~ ~ ~ ~90 ~

# Y軸をまず設定する（-15度～15度）
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.001 run random value -15000..15000

# X軸を取得する
    execute store result score $AX.X Temporary run data get entity 0-0-0-0-0 Rotation[0] 1000
    execute store result score $AX.Temp Temporary run random value -15000..15000
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.001 run scoreboard players operation $AX.X Temporary += $AX.Temp Temporary

# スコア群をリセット
    scoreboard players reset $AX.X Temporary
    scoreboard players reset $AX.Temp Temporary

# マーカーの位置でVFX起動
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/vfx

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# ダメージ設定
    # ダメージ
        data modify storage api: Argument.Damage set value 35.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの斬撃によって切り裂かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージを与える
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
# リセット
    function api:damage/reset

# 斬撃音
    function asset:mob/0393.labyria_first/ai/general/6.slash_sound
