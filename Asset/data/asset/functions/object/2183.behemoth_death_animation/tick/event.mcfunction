#> asset:object/2183.behemoth_death_animation/tick/event
#
# Objectのtick時の処理
#
# @within asset:object/2183.behemoth_death_animation/tick/

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# 討伐
    execute if score @s General.Object.Tick matches 1 run function animated_java:behemoth_aj/animations/9_death/tween {duration:1, to_frame: 0}
    execute if score @s General.Object.Tick matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s General.Object.Tick matches 1..5 positioned ~ ~32 ~ run playsound entity.polar_bear.death hostile @a[distance=..80] ~ ~ ~ 0.1 0.7 0.5
    execute if score @s General.Object.Tick matches 56 run particle explosion ~ ~5 ~ 2 4 2 0 50
    execute if score @s General.Object.Tick matches 56 run particle explosion ^4 ^6 ^ 2 2 2 0 30
    execute if score @s General.Object.Tick matches 56 run particle explosion ^4 ^6 ^ 2 2 2 0 30

# モデル消去
    execute if score @s General.Object.Tick matches 56 run function animated_java:behemoth_aj/remove/all
