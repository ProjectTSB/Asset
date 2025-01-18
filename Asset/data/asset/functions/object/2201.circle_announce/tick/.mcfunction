#> asset:object/2201.circle_announce/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2201/tick

#> prv
# @private
    #declare score_holder $2201.tick

# KillするTickを取得
    execute store result score $2201.tick Temporary run data get storage asset:context this.Tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    execute if score @s General.Object.Tick > $2201.tick Temporary run kill @s
