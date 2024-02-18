#> asset:mob/0354.rubiel_scythe/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0354.rubiel_scythe/tick/1.trigger

# タイマー増加
    scoreboard players add @s 9U.Timer 1
    execute if score @s 9U.DamageInterval matches 1.. run scoreboard players remove @s 9U.DamageInterval 1
    execute if score @s 9U.Timer matches 20.. run tag @s add 9U.Death

# teleport_duration適用
    execute if score @s 9U.Timer matches 1 run data modify entity @s {} merge value {teleport_duration:1,transformation:{scale:[2f,2f,2f]}}

# 回転
    scoreboard players remove @s 9U.Angle 4
    execute if score @s 9U.Angle matches ..0 run scoreboard players set @s 9U.Angle 20
    execute store result storage asset:temp 9U.Angle float 0.1 run scoreboard players get @s 9U.Angle
    function asset:mob/0354.rubiel_scythe/tick/app/3.apply_angle.m with storage asset:temp 9U
    data remove storage asset:temp 9U

# 移動
    execute at @s run function asset:mob/0354.rubiel_scythe/tick/app/1.move
    execute at @s run function asset:mob/0354.rubiel_scythe/tick/app/1.move
    execute at @s run function asset:mob/0354.rubiel_scythe/tick/app/1.move

# 消去
    execute if entity @s[tag=9U.Death] run kill @s
