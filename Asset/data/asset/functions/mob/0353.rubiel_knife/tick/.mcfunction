#> asset:mob/0353.rubiel_knife/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/353/tick

# タイマー増加
    scoreboard players add @s 9T.Timer 1
    execute if score @s 9T.Timer matches 30.. run tag @s add 9T.Death

# teleport_duration適用
    execute if score @s 9T.Timer matches 1 run data modify entity @s teleport_duration set value 1

# 移動
    execute unless entity @s[tag=9T.Hit] at @s run function asset:mob/0353.rubiel_knife/tick/app/1.move
    execute unless entity @s[tag=9T.Hit] at @s run function asset:mob/0353.rubiel_knife/tick/app/1.move
    execute unless entity @s[tag=9T.Hit] at @s run function asset:mob/0353.rubiel_knife/tick/app/1.move
    execute unless entity @s[tag=9T.Hit] at @s run function asset:mob/0353.rubiel_knife/tick/app/1.move
    execute unless entity @s[tag=9T.Hit] at @s run function asset:mob/0353.rubiel_knife/tick/app/1.move
    execute unless entity @s[tag=9T.Hit] at @s run function asset:mob/0353.rubiel_knife/tick/app/1.move

# 消去
    execute if entity @s[tag=9T.Death] run kill @s
