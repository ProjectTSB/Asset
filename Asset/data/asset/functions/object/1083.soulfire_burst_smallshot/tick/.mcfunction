#> asset:object/1083.soulfire_burst_smallshot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1083/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 加速
    execute if score @s General.Object.Tick matches 6 run data modify storage asset:context this.Speed set value 2

# ホーミング
    execute if score @s General.Object.Tick matches 3..40 run function asset:object/1083.soulfire_burst_smallshot/tick/homing.m with storage asset:context this

# Super
    function asset:object/super.tick
