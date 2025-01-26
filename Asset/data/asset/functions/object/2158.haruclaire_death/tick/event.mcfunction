#> asset:object/2158.haruclaire_death/tick/event
#
# Objectのtick時の処理
#
# @within asset:object/2158.haruclaire_death/tick/

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# アニメーション再生
    execute if score @s General.Object.Tick matches 1 run function animated_java:haruclaire_aj/animations/10_death/tween {duration:1, to_frame: 0}

# 演出
    execute if score @s General.Object.Tick matches 5 run function asset:object/2158.haruclaire_death/tick/event_show_ice

# 終了
    execute if score @s General.Object.Tick matches 100 run function asset:object/2158.haruclaire_death/tick/event_break_ice
