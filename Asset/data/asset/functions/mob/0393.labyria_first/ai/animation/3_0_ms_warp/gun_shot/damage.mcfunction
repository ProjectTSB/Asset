#> asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/damage
#
# ダメージ処理
#
# @within function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/loop

# ダメージ設定
    # ダメージ
        data modify storage api: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの魔弾によって貫かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージを与える
        function api:damage/modifier
        execute as @a[tag=AX.Temp.Target,distance=..5] run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @a[tag=AX.Temp.Target,distance=..5] remove AX.Temp.Target
