#> asset:object/2167.ahssat_bullet_core/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2167/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 発射
    execute if score @s General.Object.Tick matches 50 run function asset:object/2167.ahssat_bullet_core/tick/spread
    execute if score @s General.Object.Tick matches 55 run function asset:object/2167.ahssat_bullet_core/tick/spread
    execute if score @s General.Object.Tick matches 60 run function asset:object/2167.ahssat_bullet_core/tick/spread

# 消滅処理
    kill @s[scores={General.Object.Tick=65..}]
