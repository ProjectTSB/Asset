#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/explosion
#
# 大爆発！
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/

# 拳部分
    execute at @e[type=marker,tag=8N.ModelLocator.RightHand,sort=nearest,limit=1] run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/knuckle_vfx

# パーティクル
    particle minecraft:explosion ~ ~ ~ 2.5 1 2.5 1 20 force @a[distance=..32]
    particle minecraft:lava ~ ~ ~ 1 1 1 0 50 force @a[distance=..32]
    particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.2 50 force @a[distance=..32]

# サウンド
    playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.0
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5

# ダメージ設定
    data modify storage api: Argument.Damage set value 30f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"

# 補正実行
    function api:damage/modifier

# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/

# リセット
    function api:damage/reset
