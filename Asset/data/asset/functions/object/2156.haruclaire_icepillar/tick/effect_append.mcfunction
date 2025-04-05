#> asset:object/2156.haruclaire_icepillar/tick/effect_append
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 上下に揺れる
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $60 Const
    execute if score $Interval Temporary matches 0 on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[2f,2f,2f]}}
    execute if score $Interval Temporary matches 10 on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.22f,0f],scale:[2f,2f,2f]}}
    execute if score $Interval Temporary matches 20 on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[2f,2f,2f]}}
    execute if score $Interval Temporary matches 30 on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.12f,0f],scale:[2f,2f,2f]}}
    execute if score $Interval Temporary matches 40 on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.1f,0f],scale:[2f,2f,2f]}}
    execute if score $Interval Temporary matches 50 on passengers if entity @s[tag=2156.Append,tag=!2156.Prediction] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.12f,0f],scale:[2f,2f,2f]}}
    scoreboard players reset $Interval Temporary
