#> asset:object/2043.lastboss_ice_sword/tick/landing/
#
#
#
# @within function asset:object/2043.lastboss_ice_sword/tick/

# 演出
    particle dust 0.667 1 0.976 1 ~ ~-0.5 ~ 0.1 0.1 0.1 0 2
    particle instant_effect ~ ~-0.5 ~ 0.2 0.2 0.2 0 1

# 攻撃開始演出
    execute if score @s General.Object.Tick matches 20 run function asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/start

# 暫く経つと攻撃開始
    execute if score @s General.Object.Tick matches 20.. run function asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/
