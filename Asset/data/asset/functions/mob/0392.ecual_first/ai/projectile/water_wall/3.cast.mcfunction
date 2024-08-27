#> asset:mob/0392.ecual_first/ai/projectile/water_wall/3.cast
#
# 爆発処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_wall/2.tick

# 演出
    function asset:mob/0392.ecual_first/ai/projectile/water_wall/vfx/cast

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放った水の壁に押しつぶされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[type=wither_skeleton,tag=this,distance=..100] run function lib:damage/modifier
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..2] run tag @s add AW.Landing
    execute positioned ~ ~1 ~ as @a[gamemode=!creative,distance=..2] run tag @s add AW.Landing
    execute positioned ~ ~2 ~ as @a[gamemode=!creative,distance=..2] run tag @s add AW.Landing
    execute positioned ~ ~3 ~ as @a[gamemode=!creative,distance=..2] run tag @s add AW.Landing
    execute positioned ~ ~4 ~ as @a[gamemode=!creative,distance=..2] run tag @s add AW.Landing
    execute positioned ~ ~5 ~ as @a[gamemode=!creative,distance=..2] run tag @s add AW.Landing
    execute as @a[tag=AW.Landing,distance=..8] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=AW.Landing,distance=..8] remove AW.Landing

# キル
    kill @s
