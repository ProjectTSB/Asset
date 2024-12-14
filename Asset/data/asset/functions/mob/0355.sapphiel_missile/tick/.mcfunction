#> asset:mob/0355.sapphiel_missile/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/355/tick

# タイマー増加
    scoreboard players add @s 9V.Timer 1
    execute if score @s 9V.Timer matches 30.. run tag @s add 9V.Death

# teleport_duration適用
    execute if score @s 9V.Timer matches 2 run data modify entity @s {} merge value {teleport_duration:1,transformation:{scale:[2f,2f,2f]}}

# 移動
    execute if entity @s[tag=!9V.Death] at @s run function asset:mob/0355.sapphiel_missile/tick/app/1.move
    execute if entity @s[tag=!9V.Death] at @s run function asset:mob/0355.sapphiel_missile/tick/app/1.move
    execute if entity @s[tag=!9V.Death] at @s run function asset:mob/0355.sapphiel_missile/tick/app/1.move
    execute if entity @s[tag=!9V.Death] at @s run function asset:mob/0355.sapphiel_missile/tick/app/1.move

# 爆発
    execute if entity @s[tag=9V.Death] at @s run function asset:mob/0355.sapphiel_missile/tick/app/2.damage
