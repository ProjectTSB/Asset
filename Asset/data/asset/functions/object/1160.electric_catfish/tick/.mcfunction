#> asset:object/1160.electric_catfish/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1160/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# クールダウン
    execute if score @s 1160.Cooldown matches 1.. run scoreboard players remove @s 1160.Cooldown 1
    execute if score @s 1160.Cooldown matches 0 run tag @s remove 1160.Inactive

# 踏まれたどうかをチェック
    execute unless entity @s[tag=1160.Inactive] positioned ~-0.5 ~ ~-0.5 as @e[type=#lib:living_without_player,dx=0,sort=nearest,limit=1] positioned ~ ~-0.8 ~ if entity @s[dx=0] run tag @s add 1160.SteppedOn
    execute if entity @e[tag=1160.SteppedOn,distance=..2] at @s run function asset:object/1160.electric_catfish/tick/attack

# 消滅処理
    execute if score @s General.Object.Tick matches 1200.. run function asset:object/1160.electric_catfish/tick/kill
