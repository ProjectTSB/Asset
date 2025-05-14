#> asset:object/2151.haruclaire_icewall_center/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2151/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
# 設計上よろしくないものの、ハルクレアの接地処理を流用して攻撃位置を地表に揃える
    execute if entity @s[scores={General.Object.Tick=1}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=1}] at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=3}] at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction_vector
    execute if entity @s[scores={General.Object.Tick=3..40}] at @s on passengers run function asset:object/2151.haruclaire_icewall_center/tick/effect_vector
    execute if entity @s[scores={General.Object.Tick=40}] on passengers run kill @s
    execute if entity @s[scores={General.Object.Tick=40}] run tp @s ^ ^ ^5
    execute if entity @s[scores={General.Object.Tick=40}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=40}] if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=75}] if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=80}] run tp @s ^ ^ ^5
    execute if entity @s[scores={General.Object.Tick=80}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=80}] if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=115}] if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=120}] run tp @s ^ ^ ^5
    execute if entity @s[scores={General.Object.Tick=120}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=120}] if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=155}] if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=160}] run tp @s ^ ^ ^5
    execute if entity @s[scores={General.Object.Tick=160}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=160}] if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=195}] if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=200}] run tp @s ^ ^ ^5
    execute if entity @s[scores={General.Object.Tick=200}] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute if entity @s[scores={General.Object.Tick=200}] if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction
    execute if entity @s[scores={General.Object.Tick=235}] if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:object/2151.haruclaire_icewall_center/tick/prediction_hard

# 攻撃
    execute if entity @s[scores={General.Object.Tick=39}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=79}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=119}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=159}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=199}] run function asset:object/2151.haruclaire_icewall_center/tick/attack
    execute if entity @s[scores={General.Object.Tick=239}] run function asset:object/2151.haruclaire_icewall_center/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=240..}]
