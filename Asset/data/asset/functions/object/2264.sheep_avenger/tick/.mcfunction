#> asset:object/2264.sheep_avenger/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2264/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 変形
    execute if score @s General.Object.Tick matches 1 run playsound entity.sheep.ambient hostile @a ~ ~ ~ 2 1
    execute if score @s General.Object.Tick matches 31 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/play
    execute if score @s General.Object.Tick matches 63 run playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 0.2 1 0.2
    execute if score @s General.Object.Tick matches 63 run playsound entity.puffer_fish.blow_up hostile @a[distance=..80] ~ ~ ~ 1 0.7
    execute if score @s General.Object.Tick matches 63 run playsound entity.sheep.hurt hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Object.Tick matches 63 run particle flash ~ ~2 ~ 2 2 2 0 50
    execute if score @s General.Object.Tick matches 63..251 run particle trial_spawner_detection ~ ~1.5 ~ 1 1.5 1 0.0 3

# 移動
    execute if score @s General.Object.Tick matches 91 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/walk/play
    execute if score @s General.Object.Tick matches 91..210 run tp @s ^ ^ ^0.08 ~ 0
    execute if score @s General.Object.Tick matches 91..215 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run tp @s ~ ~ ~ ~ ~
    execute if score @s General.Object.Tick matches 111 run function asset:object/2264.sheep_avenger/tick/step
    execute if score @s General.Object.Tick matches 131 run function asset:object/2264.sheep_avenger/tick/step
    execute if score @s General.Object.Tick matches 151 run function asset:object/2264.sheep_avenger/tick/step
    execute if score @s General.Object.Tick matches 171 run function asset:object/2264.sheep_avenger/tick/step
    execute if score @s General.Object.Tick matches 191 run function asset:object/2264.sheep_avenger/tick/step
    execute if score @s General.Object.Tick matches 211 run function asset:object/2264.sheep_avenger/tick/step

# 振り向き
    execute if score @s General.Object.Tick matches 231 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/turn/play
    execute if score @s General.Object.Tick matches 231 run playsound entity.sheep.death hostile @a ~ ~ ~ 2 1
    execute if score @s General.Object.Tick matches 234 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] on passengers if entity @s[type=item_display] run data modify entity @s brightness set value {sky:7,block:7}

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=300..}] run function asset:object/2264.sheep_avenger/tick/kill
