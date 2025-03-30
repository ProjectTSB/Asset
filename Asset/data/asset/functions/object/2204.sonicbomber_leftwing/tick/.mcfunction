#> asset:object/2204.sonicbomber_leftwing/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2204/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 神器ドロップ
    execute if entity @s[scores={General.Object.Tick=80}] run function asset:object/2204.sonicbomber_leftwing/tick/artifact_drop

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=100..}] run kill @e[type=marker,tag=5X.Centre,distance=..128,limit=1]
    kill @s[scores={General.Object.Tick=100..}]
