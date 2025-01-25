#> asset:object/2007.nova/tick/cast
#
# 爆発発動
#
# @within function asset:object/2007.nova/tick/

# パーティクル表示
    particle dust 2 0 100000000 3 ~ ~3 ~ 2 1.5 2 0 100 force @a[distance=..32]
    particle dust 2 0 100000000 3 ~ ~7 ~ 1.25 3.5 1.25 0 100 force @a[distance=..32]
    particle gust_emitter ~ ~0.5 ~ 0 0 0 0 3 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.5
    playsound entity.lightning_bolt.impact hostile @a[distance=..16] ~ ~ ~ 1 2 0
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.5 0.5
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 0.75 0
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 0.7 0
    playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.25 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 1.95 0.0

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 60.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放ったノヴァによって消し飛ばされてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] at @s run function api:damage/
# リセット
    function api:damage/reset


# 消滅処理
    kill @e[type=item_display,tag=2007.Nova,distance=..0.001,sort=nearest,limit=1]
    kill @s
