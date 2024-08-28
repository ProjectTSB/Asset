#> asset:mob/0392.ecual_first/ai/projectile/water_magic/3.cast
#
# ダメージ処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_magic/2.tick

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 55.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが巻き起こしたハイドロストームに溺れてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[type=wither_skeleton,tag=this,distance=..100] run function lib:damage/modifier
# ダメージを与える
    execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[gamemode=!creative,dx=2,dy=2,dz=2] at @s run function lib:damage/
# リセット
    function lib:damage/reset
