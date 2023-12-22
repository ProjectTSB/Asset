#> asset:mob/0345.louvert_soul_bomb/tick/5.cast
#
# 爆破
#
# @within function asset:mob/0345.louvert_soul_bomb/tick/2.tick

# 演出
    function asset:mob/0345.louvert_soul_bomb/tick/5.1.cast_vfx

# 引数の設定
    # 与えるダメージ
        # ノーマルなら 36f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 36.0f
        # ハードなら 48f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 48.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのソウルボムに爆破されてしまった。","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s



