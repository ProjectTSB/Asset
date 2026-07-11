#> asset:object/1175.timer_of_sword_for_knight/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1175/tick

# 寿命カウント
    scoreboard players remove @s 1175.Timer 1
    execute as @s at @a[distance=..0.5,tag=1574used] run tp @s ~ ~ ~
#演出
    execute if score @s 1175.Timer matches 15 run playsound minecraft:block.bell.resonate player @a[distance=..0.5,tag=1574used] ~ ~ ~ 1 2
# 消滅処理
    execute if score @s 1175.Timer matches 0 run tag @a[distance=..0.5,tag=1574used] remove 1574used
    kill @s[scores={1175.Timer=..0}]
