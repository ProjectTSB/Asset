#> asset:mob/0392.ecual_first/ai/projectile/water_magic/3.cast
#
# ダメージ処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_magic/2.tick

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 25.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが放った荒波に沈んでいった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[type=wither_skeleton,tag=this,distance=..100] run function lib:damage/modifier
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..3.65] at @s run function lib:damage/
# リセット
    function lib:damage/reset
