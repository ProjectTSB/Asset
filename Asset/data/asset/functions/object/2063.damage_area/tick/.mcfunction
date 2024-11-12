#> asset:object/2063.damage_area/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2063/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大を1tick遅らせる
    execute if score @s General.Object.Tick matches 2 on passengers run data modify entity @s {} merge from storage asset:context this.Merge

# データからTickを取り出す
    execute store result score $2063.Temp General.Object.Tick run data get storage asset:context this.Tick
    scoreboard players add $2063.Temp General.Object.Tick 4
    execute if score $2063.Temp General.Object.Tick <= @s General.Object.Tick run kill @s

# $2063.Tempのリセット
    scoreboard players reset $2063.Temp General.Object.Tick
