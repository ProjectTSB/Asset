#> asset:mob/0391.axia_first/ai/projectile/sword/3.cast
#
# 爆発処理
#
# @within function asset:mob/0391.axia_first/ai/projectile/sword/2.tick

# 演出
    function asset:mob/0391.axia_first/ai/projectile/sword/vfx/cast

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが召喚した剣に身体を貫かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[tag=this,distance=..100] run function lib:damage/modifier
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..2.5] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s
    kill @e[type=item_display,tag=AV.DimSwordDisplay,distance=..0.001,limit=1]
