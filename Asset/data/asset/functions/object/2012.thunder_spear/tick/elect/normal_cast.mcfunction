#> asset:object/2012.thunder_spear/tick/elect/normal_cast
#
# ノーマル帯電 発動
#
# @within function asset:object/2012.thunder_spear/tick/

# 追加パーティクル
    particle dust 1 1 0.3 2 ~ ~ ~ 5 5 5 0 500 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.5
    playsound entity.lightning_bolt.thunder hostile @a[distance=..32] ~ ~ ~ 1 1
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 1.9
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 100.0f
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
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
# リセット
    function api:damage/reset
