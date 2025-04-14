#> asset:object/1144.hekireki_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1144/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷を十字に落とす
    execute if score @s General.Object.Tick matches 2 positioned ^2 ^ ^2 run function asset:object/1144.hekireki_thunder/tick/thunder
    execute if score @s General.Object.Tick matches 2 positioned ^2 ^ ^-2 run function asset:object/1144.hekireki_thunder/tick/thunder
    execute if score @s General.Object.Tick matches 2 positioned ^-2 ^ ^2 run function asset:object/1144.hekireki_thunder/tick/thunder
    execute if score @s General.Object.Tick matches 2 positioned ^-2 ^ ^-2 run function asset:object/1144.hekireki_thunder/tick/thunder

    execute if score @s General.Object.Tick matches 4 positioned ^4 ^ ^4 run function asset:object/1144.hekireki_thunder/tick/thunder
    execute if score @s General.Object.Tick matches 4 positioned ^4 ^ ^-4 run function asset:object/1144.hekireki_thunder/tick/thunder
    execute if score @s General.Object.Tick matches 4 positioned ^-4 ^ ^4 run function asset:object/1144.hekireki_thunder/tick/thunder
    execute if score @s General.Object.Tick matches 4 positioned ^-4 ^ ^-4 run function asset:object/1144.hekireki_thunder/tick/thunder

# 消滅処理
    kill @s[scores={General.Object.Tick=6..}]
