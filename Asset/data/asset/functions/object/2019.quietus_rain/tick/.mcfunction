#> asset:object/2019.quietus_rain/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2019/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 召喚
    execute if score @s General.Object.Tick matches 1 run function asset:object/2019.quietus_rain/tick/summon/1
    execute if score @s General.Object.Tick matches 31 run function asset:object/2019.quietus_rain/tick/summon/2
    execute if score @s General.Object.Tick matches 51 run function asset:object/2019.quietus_rain/tick/summon/3

# 回転
    execute as @e[type=item_display,tag=2019.Rain,distance=7..8] at @s run function asset:object/2019.quietus_rain/tick/rotate/1
    execute as @e[type=item_display,tag=2019.Rain,distance=14.5..15.5] at @s run function asset:object/2019.quietus_rain/tick/rotate/2
    execute as @e[type=item_display,tag=2019.Rain,distance=22..23] at @s run function asset:object/2019.quietus_rain/tick/rotate/3

# キル
    execute if score @s General.Object.Tick matches 360 run kill @s
