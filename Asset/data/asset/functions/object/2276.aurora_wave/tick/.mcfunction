#> asset:object/2276.aurora_wave/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2276/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# でかくなる
    execute if score @s General.Object.Tick matches 0 run function asset:object/2276.aurora_wave/tick/transformation/0
    execute if score @s General.Object.Tick matches 3 run function asset:object/2276.aurora_wave/tick/transformation/1

# 小さくなる
    execute if score @s General.Object.Tick matches 12 run function asset:object/2276.aurora_wave/tick/transformation/2


# 消滅処理
    kill @s[scores={General.Object.Tick=25..}]
