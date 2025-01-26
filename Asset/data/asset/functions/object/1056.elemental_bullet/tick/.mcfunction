#> asset:object/1056.elemental_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1056/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 火属性
    execute if data storage asset:context this{Element:Fire} run particle minecraft:dust 1 0.451 0 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a
    execute if data storage asset:context this{Element:Fire} run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 normal @a
# 水属性
    execute if data storage asset:context this{Element:Water} run particle minecraft:dust 0.298 0.471 0.945 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a
    execute if data storage asset:context this{Element:Water} run particle minecraft:scrape ~ ~0.5 ~ 0 0 0 0 1 normal @a
# 雷属性
    execute if data storage asset:context this{Element:Thunder} run particle minecraft:dust 0.878 1 0.333 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a
    execute if data storage asset:context this{Element:Thunder} run particle minecraft:wax_on ~ ~0.5 ~ 0 0 0 0 1 normal @a

# 継承
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
