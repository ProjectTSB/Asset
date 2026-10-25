#> asset:object/2200.twins_escape_animation/tick/event_sapphiel
#
# Objectのtick時の処理
#
# @within asset:object/2200.twins_escape_animation/tick/

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# アニメーション再生
    execute if score @s General.Object.Tick matches 1 run function animated_java:twins_sapphiel/animations/42_escape/tween {duration:1, to_frame: 1}

# 移動
    execute if block ~ ~-0.1 ~ #lib:no_collision/ run tp @s ~ ~-0.1 ~

# 演出
    execute if score @s General.Object.Tick matches 59 run playsound entity.phantom.flap hostile @a ~ ~ ~ 3 1.2
    execute if score @s General.Object.Tick matches 66 run playsound item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s General.Object.Tick matches 66 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s General.Object.Tick matches 66 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# 消去
    execute if score @s General.Object.Tick matches 66 run function asset:object/2200.twins_escape_animation/tick/remove_sapphiel
