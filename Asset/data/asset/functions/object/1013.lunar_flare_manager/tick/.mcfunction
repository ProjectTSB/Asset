#> asset:object/1013.lunar_flare_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1013/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ルナフレア召喚
    execute rotated ~ 90 run function asset:object/1013.lunar_flare_manager/tick/summon_laser

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
