#> asset:object/2151.haruclaire_icewall_center/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2151/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
# 設計上よろしくないものの、ハルクレアの設置処理を流用
    execute if entity @s[scores={General.Object.Tick=1}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=1}] at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=40}] on passengers run kill @s
    execute if entity @s[scores={General.Object.Tick=40}] run tp @s ^ ^ ^5
    execute if entity @s[scores={General.Object.Tick=40}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=40}] at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=80}] run tp @s ^ ^ ^5
    execute if entity @s[scores={General.Object.Tick=80}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=80}] at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction

# 攻撃
    execute if entity @s[scores={General.Object.Tick=39}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=79}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=119}] run function asset:object/2151.haruclaire_icewall_center/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=121..}]
