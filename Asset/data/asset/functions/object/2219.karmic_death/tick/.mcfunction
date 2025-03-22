#> asset:object/2219.karmic_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2219/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if score @s General.Object.Tick matches 4 run playsound minecraft:entity.player.attack.nodamage hostile @a ~ ~ ~ 1 0.4
    execute if score @s General.Object.Tick matches 85 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    execute if score @s General.Object.Tick matches 105 run function asset:object/2219.karmic_death/tick/shot

# 死
    execute if score @s General.Object.Tick matches 140 run function asset:object/2219.karmic_death/tick/kill
