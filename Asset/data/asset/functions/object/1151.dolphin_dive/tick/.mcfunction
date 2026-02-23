#> asset:object/1151.dolphin_dive/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1151/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 波
    execute if score @s General.Object.Tick matches 1 run function asset:object/1151.dolphin_dive/tick/wave/1
    execute if score @s General.Object.Tick matches 4 run function asset:object/1151.dolphin_dive/tick/wave/2
    execute if score @s General.Object.Tick matches 9 run function asset:object/1151.dolphin_dive/tick/wave/3

# 消滅処理
    kill @s[scores={General.Object.Tick=9..}]
