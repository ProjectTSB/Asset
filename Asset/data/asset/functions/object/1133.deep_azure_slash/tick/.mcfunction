#> asset:object/1133.deep_azure_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1133/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if data storage asset:context this{Count:5} run function asset:object/1133.deep_azure_slash/tick/vfx/5/

# 消滅処理
    kill @s[scores={General.Object.Tick=3..}]

    #particle dust 0 0 0.4 1.2 ~ ~0.4 ~ 0.25 0.25 0.25 0 25 normal
    #particle dust 0.1 0.1 0.7 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal
    #particle dust 0.2 0.2 1 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal
