#> asset:object/2012.thunder_spear/tick/start/cast
#
# 振ってきた時に発動
#
# @within function asset:object/2012.thunder_spear/tick/

# 演出
    function asset:object/2012.thunder_spear/tick/start/vfx_cast

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが降らせた雷の槍に感電させられてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..10] run function api:damage/
# リセット
    function api:damage/reset
