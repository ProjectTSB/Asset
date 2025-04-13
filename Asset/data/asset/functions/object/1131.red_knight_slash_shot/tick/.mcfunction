#> asset:object/1131.red_knight_slash_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1131/tick

# Tick加算
    scoreboard players add @s[tag=1131.RangeOver] General.Object.Tick 1

# 縮んでいく
    execute if score @s General.Object.Tick matches 1 run function asset:object/1131.red_knight_slash_shot/tick/shrink
    execute if score @s General.Object.Tick matches 1 run item replace entity @s container.0 with minecraft:leather_horse_armor{display:{color:8388608},CustomModelData:20069}
    execute if score @s General.Object.Tick matches 2 run item replace entity @s container.0 with minecraft:leather_horse_armor{display:{color:8388608},CustomModelData:20070}

# 消滅処理
    kill @s[scores={General.Object.Tick=5..}]

# Super
    function asset:object/super.tick
