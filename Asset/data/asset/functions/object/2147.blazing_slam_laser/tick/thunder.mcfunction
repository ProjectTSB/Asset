#> asset:object/2147.blazing_slam_laser/tick/thunder
#
#
#
# @within function asset:object/2147.blazing_slam_laser/tick/

#>ヒット検知
# @private
#declare tag Hit

# パーティクル
    particle explosion ~ ~20 ~ 0 0 0 0 1 force @a[distance=..32]
    particle flame ~ ~5 ~ 0.1 3 0.1 0.01 10
    particle dust 1 0.5 0 1 ~ ~5 ~ 0.3 3 0.3 0 50 force @a[distance=..32]
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:lava ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:flame ~ ~ ~ 0.0 1 0.0 0.17 0
    particle minecraft:flame ~0.3 ~0.1 ~-0.1 0.0 1 0.0 0.15 0
    particle minecraft:flame ~-0.5 ~0.2 ~0.2 0.0 1 0.0 0.23 0
    particle minecraft:flame ~0.4 ~0.3 ~-0.7 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.7 ~0.4 ~0.5 0.0 1 0.0 0.2 0
    particle minecraft:flame ~-0.3 ~0.5 ~ 0.0 1 0.0 0.27 0
    particle minecraft:flame ~-0.7 ~0.6 ~-0.1 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.3 ~0.7 ~0.2 0.0 1 0.0 0.25 0

# サウンド
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 0.7 0
    playsound minecraft:entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.3 0 0

# 変形
    function asset:object/2147.blazing_slam_laser/tick/transform/1

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # 円形の範囲、または上方向に当たったらダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dy=10,dz=1] add Hit
        tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add Hit
        execute as @a[tag=Hit] run function api:damage/

# リセット
    tag @a[tag=Hit,distance=..32] remove Hit
    function api:damage/reset
