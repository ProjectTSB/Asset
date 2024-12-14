#> asset:object/2133.red_knihgt_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2133/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# TP
    execute if score @s General.Object.Tick matches 1 run tp @s @e[type=item_display,distance=..0.1,sort=nearest,limit=1]

# パーティクル
    particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]

# 爆発
    execute if score @s General.Object.Tick matches 5 run function asset:object/2133.red_knihgt_death/tick/explode
    execute if score @s General.Object.Tick matches 10 run function asset:object/2133.red_knihgt_death/tick/explode
    execute if score @s General.Object.Tick matches 15 run function asset:object/2133.red_knihgt_death/tick/explode
    execute if score @s General.Object.Tick matches 20 run function asset:object/2133.red_knihgt_death/tick/explode
    execute if score @s General.Object.Tick matches 25 run function asset:object/2133.red_knihgt_death/tick/explode
    execute if score @s General.Object.Tick matches 30 run function asset:object/2133.red_knihgt_death/tick/explode
    execute if score @s General.Object.Tick matches 35 run function asset:object/2133.red_knihgt_death/tick/explode
    execute if score @s General.Object.Tick matches 40 run function asset:object/2133.red_knihgt_death/tick/explode

    execute if score @s General.Object.Tick matches 67 run playsound item.trident.thunder hostile @a ~ ~ ~ 1 0

    execute if score @s General.Object.Tick matches 86 positioned ^0.25 ^1.3 ^1.2 run function asset:object/2133.red_knihgt_death/tick/summon_string

    execute if score @s General.Object.Tick matches 145 run function asset:object/2133.red_knihgt_death/tick/kill
# 消滅処理
    kill @s[scores={General.Object.Tick=146..}]
