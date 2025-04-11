#> asset:object/2243.lawless_mist_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2243/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 直進処理
    execute if score @s General.Object.Tick matches 0..10 run tp @s ^ ^ ^0.5
    execute if score @s General.Object.Tick matches 11..15 run tp @s ^ ^ ^0.4
    execute if score @s General.Object.Tick matches 14..16 run tp @s ^ ^ ^0.3
    execute if score @s General.Object.Tick matches 17..18 run tp @s ^ ^ ^0.2
    execute if score @s General.Object.Tick matches 19..20 run tp @s ^ ^ ^0.1

# 見た目
    execute if score @s General.Object.Tick matches ..60 run function asset:object/2243.lawless_mist_shot/tick/particle

# 炸裂
    execute if score @s General.Object.Tick matches 60 run function asset:object/2243.lawless_mist_shot/tick/explode

# 持続判定
    execute if score @s General.Object.Tick matches 60.. run function asset:object/2243.lawless_mist_shot/tick/aoe/tick

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
