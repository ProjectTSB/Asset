#> asset:object/2063.damage_area/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2063/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# データからTickを取り出す
    execute store result score $2063.Temp General.Object.Tick run data get storage asset:context this.Tick
    scoreboard players add $2063.Temp General.Object.Tick 2
    execute if score $2063.Temp General.Object.Tick <= @s General.Object.Tick run kill @s
