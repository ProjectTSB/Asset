#> asset:object/2141.louvert_soul_bomb/tick/cast
#
# 発動処理
#
# @within function asset:object/2141.louvert_soul_bomb/tick/process

# 演出
    function asset:object/2141.louvert_soul_bomb/tick/cast_vfx

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 60.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのソウルボムに爆破されてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run function api:damage/
# リセット
    function api:damage/reset

# キル
    kill @s
