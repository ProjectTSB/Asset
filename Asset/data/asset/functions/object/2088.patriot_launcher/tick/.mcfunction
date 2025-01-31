#> asset:object/2088.patriot_launcher/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2088/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    # kill @s[scores={General.Object.Tick=1000..}]

# 生きている場合の処理
    execute if data storage asset:context this{IsBroken:0b} run function asset:object/2088.patriot_launcher/tick/tick_active

# 死んでいる場合の処理
    execute if data storage asset:context this{IsBroken:1b} run function asset:object/2088.patriot_launcher/tick/tick_broken
