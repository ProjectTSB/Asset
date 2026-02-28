#> asset:object/2271.moving_circle_damage_area/tick/effect
#
# 
#
# @within function asset:object/2271.moving_circle_damage_area/tick/

# 計算
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $23 Const

# 予告線表示
    $execute if score $Interval Temporary matches 1 run data modify entity @s text set value '[{"text":">>","color":"$(TextColor)","bold":true}]'
    $execute if score $Interval Temporary matches 3 run data modify entity @s text set value '[{"text":">","color":"#BF874E","bold":true},{"text":">","color":"$(TextColor)","bold":true}]'
    execute if score $Interval Temporary matches 5 run data modify entity @s text set value '[{"text":">","color":"#BF874E","bold":true},{"text":">","color":"#BF874E","bold":true}]'
    $execute if score $Interval Temporary matches 20 run data modify entity @s text set value '[{"text":">","color":"$(TextColor)","bold":true},{"text":">","color":"#BF874E","bold":true}]'
    $execute if score $Interval Temporary matches 22 run data modify entity @s text set value '[{"text":">>","color":"$(TextColor)","bold":true}]'

# 終了
    scoreboard players reset $Interval Temporary
