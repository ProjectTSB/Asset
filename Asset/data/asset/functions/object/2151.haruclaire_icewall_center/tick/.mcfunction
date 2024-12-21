#> asset:object/2151.haruclaire_icewall_center/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2151/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=40}] positioned ^ ^ ^5 run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=80}] positioned ^ ^ ^10 run function asset:object/2151.haruclaire_icewall_center/tick/prediction

# 攻撃
    execute if entity @s[scores={General.Object.Tick=40}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=80}] positioned ^ ^ ^5 run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=120}] positioned ^ ^ ^10 run function asset:object/2151.haruclaire_icewall_center/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=121..}]
