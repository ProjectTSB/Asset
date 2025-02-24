#> asset:object/1098.alchemy_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1098/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 発動
    execute if score @s General.Object.Tick matches 10 run function asset:object/1098.alchemy_laser/tick/shot

# 回転させよう
    execute if score @s General.Object.Tick matches 15 run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,20f]}}

# 消滅処理
    kill @s[scores={General.Object.Tick=21..}]
