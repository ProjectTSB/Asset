#> asset:object/1103.light_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1103/tick

# 敵追従
    execute if data storage asset:context this{Track:true} run function asset:object/1103.light_ball/tick/track.m with storage asset:context this
    execute unless entity @s run return 0

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 消滅処理
    execute store result score $UN.Temp Temporary run data get storage asset:context this.Duration
    execute if score @s General.Object.Tick >= $UN.Temp Temporary run function asset:object/1103.light_ball/tick/kill
    scoreboard players reset $UN.Temp Temporary

    # kill @s[scores={General.Object.Tick=1000..}]
