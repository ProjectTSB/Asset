#> asset:object/2256.water_column/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2256/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if score @s General.Object.Tick matches 3 run particle rain ~ ~ ~ 0.4 0.6 0.4 0.1 40 normal @a

# 見た目変更
    execute if score @s General.Object.Tick matches 3 run data modify entity @s item.tag.CustomModelData set value 20571
    execute if score @s General.Object.Tick matches 5 run data modify entity @s item.tag.CustomModelData set value 20572
    execute if score @s General.Object.Tick matches 7 run data modify entity @s item.tag.CustomModelData set value 20573
    execute if score @s General.Object.Tick matches 9 run data modify entity @s item.tag.CustomModelData set value 20574
    execute if score @s General.Object.Tick matches 11 run data modify entity @s item.tag.CustomModelData set value 20575
    execute if score @s General.Object.Tick matches 13 run data modify entity @s item.tag.CustomModelData set value 20576
    execute if score @s General.Object.Tick matches 15 run data modify entity @s item.tag.CustomModelData set value 20577

# 消滅処理
    kill @s[scores={General.Object.Tick=16..}]
