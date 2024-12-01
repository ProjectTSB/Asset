#> asset:object/2113.rectangle_announce/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2113/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 2tick目にscaleのxを適用
    execute if entity @s[scores={General.Object.Tick=2}] run data modify entity @s transformation.scale[0] set from storage asset:context this.ScaleX

# 3Tick後に伸びていく
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2113.rectangle_announce/tick/tranform

# 消滅処理
    execute if score @s General.Object.Tick > @s 2113.KillTick run kill @s
