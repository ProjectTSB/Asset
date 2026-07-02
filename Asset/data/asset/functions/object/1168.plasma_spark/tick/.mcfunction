#> asset:object/1168.plasma_spark/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1168/tick

# Tick減算
    scoreboard players remove @s General.Object.Tick 1

# 炸裂処理
    execute if score @s General.Object.Tick matches ..0 run function asset:object/1168.plasma_spark/tick/explode
