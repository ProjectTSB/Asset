#> asset:object/2138.blazing_slam_laser/tick/thunder
#
#
#
# @within function asset:object/2138.blazing_slam_laser/tick/

# パーティクル
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..32]
    particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..32]
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:flame ~ ~ ~ 0.0 1 0.0 0.17 0
    particle minecraft:flame ~0.3 ~0.1 ~-0.1 0.0 1 0.0 0.15 0
    particle minecraft:flame ~-0.5 ~0.2 ~0.2 0.0 1 0.0 0.23 0
    particle minecraft:flame ~0.4 ~0.3 ~-0.7 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.7 ~0.4 ~0.5 0.0 1 0.0 0.2 0
    particle minecraft:flame ~-0.3 ~0.5 ~ 0.0 1 0.0 0.27 0
    particle minecraft:flame ~-0.7 ~0.6 ~-0.1 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.3 ~0.7 ~0.2 0.0 1 0.0 0.25 0

# 演出
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1 0
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 0.3 0 0

# 変形
    function asset:object/2138.blazing_slam_laser/tick/transform/1

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
# リセット
    function api:damage/reset
