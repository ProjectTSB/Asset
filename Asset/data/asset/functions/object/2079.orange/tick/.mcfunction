#> asset:object/2079.orange/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2079/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle dust 1 0.5 0 1 ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a

# 着地したときの処理
    execute if entity @s[tag=!2079.OnBlock] unless block ~ ~-0.3 ~ #lib:no_collision/ run scoreboard players set @s General.Object.Tick 201
    execute if entity @s[tag=!2079.OnBlock] unless block ~ ~-0.3 ~ #lib:no_collision/ run data modify entity @s NoGravity set value true
    execute if entity @s[tag=!2079.OnBlock] unless block ~ ~-0.3 ~ #lib:no_collision/ run tag @s add 2079.OnBlock

# 着地後の処理
    execute if entity @s[tag=2079.OnBlock] run function asset:object/2079.orange/tick/on_block

# 消滅処理
    kill @s[scores={General.Object.Tick=60..199}]
