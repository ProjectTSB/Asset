#> asset:object/2161.haruclaire_ic_pisces/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2161.haruclaire_ic_pisces/tick/

# 予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2161.haruclaire_ic_pisces/tick/prediction

# アニメーション
    execute if entity @s[scores={General.Object.Tick=15}] on passengers run function animated_java:ic_pisce_aj/animations/2_attack/tween {duration:1, to_frame: 1}

# 演出
    execute if entity @s[scores={General.Object.Tick=11}] run playsound entity.dolphin.ambient hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=21..30}] run playsound entity.dolphin.swim hostile @a ~ ~ ~ 2 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=30}] run function asset:object/2161.haruclaire_ic_pisces/tick/damage
