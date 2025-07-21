#> asset:object/2063.damage_area/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2063/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# スコアを加算する
    execute store result score $2063.Temp 2063.Scale.Tick run data get storage asset:context this.ScaleTick
    scoreboard players operation @s 2063.Scale.Tick += $2063.Temp 2063.Scale.Tick

# Scaleの設定
    data modify storage asset:context this.Merge.transformation.scale set value [0f,0f,0.01f]
    execute store result storage asset:context this.Merge.transformation.scale[0] float 0.001 run scoreboard players get @s 2063.Scale.Tick
    execute store result storage asset:context this.Merge.transformation.scale[1] float 0.001 run scoreboard players get @s 2063.Scale.Tick

# データからTickを取り出す
    execute store result score $2063.Temp General.Object.Tick run data get storage asset:context this.Tick

# 拡大する
    execute if score $2063.Temp General.Object.Tick >= @s General.Object.Tick on passengers run data modify entity @s {} merge from storage asset:context this.Merge

# 拡大し終わった後、2Tick後に消滅
    scoreboard players add $2063.Temp General.Object.Tick 2
    execute if score $2063.Temp General.Object.Tick <= @s General.Object.Tick on passengers run kill @s
    execute if score $2063.Temp General.Object.Tick <= @s General.Object.Tick run kill @s

# $2063.Tempのリセット
    scoreboard players reset $2063.Temp 2063.Scale.Tick
    scoreboard players reset $2063.Temp General.Object.Tick
