#> asset:object/2005.thunder_bomb/tick/cast
#
# 発動処理
#
# @within function asset:object/2005.thunder_bomb/tick/

# パーティクル表示
    particle dust 1 1 0.3 2.5 ~ ~1 ~ 1.5 0.5 1.5 0 60 force @a[distance=..32]
    particle dust 1 1 0.3 2.5 ~ ~5 ~ 0.75 2.5 0.75 0 80 force @a[distance=..32]
    particle gust_emitter ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 1.5
    playsound entity.lightning_bolt.impact hostile @a[distance=..16] ~ ~ ~ 0.6 2 0
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 55.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放ったサンダーグレネードによって感電してしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
# リセット
    function api:damage/reset
