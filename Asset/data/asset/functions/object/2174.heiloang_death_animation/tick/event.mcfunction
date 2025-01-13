#> asset:object/2174.heiloang_death_animation/tick/event
#
# Objectのtick時の処理
#
# @within asset:object/2174.heiloang_death_animation/tick/

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# 怯み
    execute if score @s General.Object.Tick matches 1 run function animated_java:heiloang_aj/animations/11_damage/tween {duration:1, to_frame: 0}
    execute if score @s General.Object.Tick matches 1 run playsound entity.ender_dragon.hurt hostile @a ~ ~ ~ 3 0.7
    execute if score @s General.Object.Tick matches 11 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# 居なくなる
    execute if score @s General.Object.Tick matches 55 run function animated_java:heiloang_aj/animations/5_1_move_start/tween {duration:1, to_frame: 0}
    execute if score @s General.Object.Tick matches 66 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s General.Object.Tick matches 84 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# モデル消去
    execute if score @s General.Object.Tick matches 98 run function animated_java:heiloang_aj/remove/all
