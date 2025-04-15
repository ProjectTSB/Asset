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
    execute if entity @s[scores={General.Object.Tick=21..44}] on passengers on passengers if entity @s[tag=aj.data] run function asset:object/2161.haruclaire_ic_pisces/tick/particle.m with entity @s data.locators.pos

# 攻撃
    execute if entity @s[scores={General.Object.Tick=23}] rotated ~ ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=24}] rotated ~45 ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=27}] rotated ~90 ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=29}] rotated ~135 ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=30}] rotated ~180 ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=31}] rotated ~225 ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=33}] rotated ~270 ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=35}] rotated ~315 ~ positioned ^ ^ ^6 run function asset:object/2161.haruclaire_ic_pisces/tick/damage
    execute if entity @s[scores={General.Object.Tick=36}] run tag @a remove 2161.Attack.Hit
