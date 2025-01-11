#> asset:object/2139.louvert_fire_magic/tick/cast
#
# 発動処理
#
# @within function asset:object/2139.louvert_fire_magic/tick/

# 演出
    # 演出のためにランダムな方向を向かせる
        execute store result entity @s Rotation[0] float 0.01 run random value 0..36000
        execute store result entity @s Rotation[1] float 0.01 run random value 0..36000
    # 球体演出
        execute at @s run function asset:object/2139.louvert_fire_magic/tick/cast_vfx
    # 演出のためにランダムな方向を向かせる
        execute store result entity @s Rotation[0] float 0.01 run random value 0..36000
        execute store result entity @s Rotation[1] float 0.01 run random value 0..36000
    # 球体演出
        execute at @s run function asset:object/2139.louvert_fire_magic/tick/cast_vfx
    # 追加パーティクル
        particle dust 100000000 1 0 2 ~ ~1 ~ 1.5 1.5 0.5 0 100 force @a[distance=..32]
        particle dust 100000000 2 0 1.5 ~ ~3 ~ 1 2 1 0 100 force @a[distance=..32]
        particle dust 100000000 2 0 1 ~ ~6 ~ 0.5 4 0.5 0 100 force @a[distance=..32]
    # 音
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.4 1.5
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.4 0.6
        playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.3
        playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2
        playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.45 1.5
    
# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの詠唱した火炎魔法に飲み込まれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..3] at @s run function api:damage/
# リセット
    function api:damage/reset

# キル
    kill @s
