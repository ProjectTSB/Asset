#> asset:object/2029.lastboss_meteor_marker/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2029/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=60..}]

# 範囲
    execute positioned ~ ~0.1 ~ run function asset:object/2029.lastboss_meteor_marker/tick/shape
