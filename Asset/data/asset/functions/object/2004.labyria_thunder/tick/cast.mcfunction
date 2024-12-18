#> asset:object/2004.labyria_thunder/tick/cast
#
# 発動処理
#
# @within function asset:object/2004.labyria_thunder/tick/

# パーティクル表示
    particle dust 1 1 0.3 2 ~ ~1 ~ 1 0.5 1 0 20 force @a[distance=..32]
    particle dust 1 1 0.3 2 ~ ~5 ~ 0.5 2.5 0.5 0 30 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 1.5
    playsound entity.lightning_bolt.impact hostile @a[distance=..16] ~ ~ ~ 0.6 2 0
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 35.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放った落雷によって感電してしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 自身をキル
    kill @s
