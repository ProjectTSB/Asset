#> asset:object/2010.hexa_laser/tick/beam/damage
#
# ダメージ処理
#
# @within function asset:object/2010.hexa_laser/tick/beam/loop

# ダメージ設定
    # ダメージ
        data modify storage api: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの放ったヘキサレーザーにより、貫かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=2010.Landing,distance=..5] run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @a[tag=2010.Landing,distance=..5] remove 2010.Landing
