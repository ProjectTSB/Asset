#> asset:object/2093.tutankhamen_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2093/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    execute at @e[type=marker,tag=AC.ModelLocator.Body,distance=..8,limit=1] run particle minecraft:ash ~ ~ ~ 0.2 0.2 0.2 0 5
    execute at @e[type=marker,tag=AC.ModelLocator.Body,distance=..8,limit=1] run particle smoke ~ ~ ~ 0.2 0.5 0.2 0.01 1
    execute if score @s General.Object.Tick matches ..42 if predicate lib:random_pass_per/50 run particle soul ~ ~1 ~ 0.2 0.5 0.2 0.01 1

# サウンド
    execute if score @s General.Object.Tick matches 25 run playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.0
    execute if score @s General.Object.Tick matches 33 run playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.5
    execute if score @s General.Object.Tick matches 42 run playsound minecraft:entity.breeze.inhale hostile @a ~ ~ ~ 1 0.5
    execute if score @s General.Object.Tick matches 80 run playsound minecraft:entity.breeze.inhale hostile @a ~ ~ ~ 1 0.7

# 消失
    execute if score @s General.Object.Tick matches 110 run function asset:object/2093.tutankhamen_death/tick/end

# 足元に何もなければ
    execute if block ~ ~-0.2 ~ #lib:no_collision/ run particle minecraft:enchant ~ ~ ~ 0.4 0 0.4 0 10
