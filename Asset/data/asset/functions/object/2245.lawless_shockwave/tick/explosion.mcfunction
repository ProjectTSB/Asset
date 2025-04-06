#> asset:object/2245.lawless_shockwave/tick/explosion
#
#
#
# @within function asset:object/2245.lawless_shockwave/tick/

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ補正
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
    # 当たり判定を発生させるぞ
        data modify storage lib: args set value {dx:2,dy:5,dz:2,selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
        function lib:rotatable_dxyz/m with storage lib: args
    # ダメージを与える。
        execute as @a[tag=DXYZ,distance=..16] run function api:damage/
    # リセット
        function api:damage/reset
        tag @a[tag=DXYZ,distance=..16] remove DXYZ

# パーティクル
    particle minecraft:dust 0.9 0.9 1 1 ~ ~1 ~ 0.3 1 0.3 0 25 force @a[distance=..64]
    particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
    particle minecraft:explosion ~ ~1.5 ~ 0 0 0 1 1 force @a[distance=..64]
    particle minecraft:end_rod ~ ~ ~ 0.0 1 0.0 0.17 0
    particle minecraft:end_rod ~0.3 ~0.1 ~-0.1 0.0 1 0.0 0.15 0
    particle minecraft:end_rod ~-0.5 ~0.2 ~0.2 0.0 1 0.0 0.23 0
    particle minecraft:end_rod ~0.4 ~0.3 ~-0.7 0.0 1 0.0 0.3 0
    particle minecraft:end_rod ~0.7 ~0.4 ~0.5 0.0 1 0.0 0.2 0
    particle minecraft:end_rod ~-0.3 ~0.5 ~ 0.0 1 0.0 0.27 0
    particle minecraft:end_rod ~-0.7 ~0.6 ~-0.1 0.0 1 0.0 0.3 0
    particle minecraft:end_rod ~0.3 ~0.7 ~0.2 0.0 1 0.0 0.25 0

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1
