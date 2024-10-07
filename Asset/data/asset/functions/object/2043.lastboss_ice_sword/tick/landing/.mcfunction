#> asset:object/2043.lastboss_ice_sword/tick/landing/
#
#
#
# @within function asset:object/2043.lastboss_ice_sword/tick/

# 演出
    particle dust 0.667 1 0.976 1 ~ ~-0.5 ~ 0.1 0.1 0.1 0 2
    particle instant_effect ~ ~-0.5 ~ 0.2 0.2 0.2 0 1

# パーティクル
    scoreboard players operation $ParticleInterval Temporary %= $9 Const
    execute positioned ~ ~ ~ rotated 0 0 if score $ParticleInterval Temporary matches 0 run function asset:object/2043.lastboss_ice_sword/tick/landing/shape

# 一定間隔でダメージ
    scoreboard players operation $DamageInterval Temporary %= $11 Const
    execute if score $DamageInterval Temporary matches 0 rotated 0 0 run function asset:object/2043.lastboss_ice_sword/tick/landing/damage
