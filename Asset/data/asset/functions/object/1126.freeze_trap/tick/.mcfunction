#> asset:object/1126.freeze_trap/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1126/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転
    tp @s ~ ~ ~ ~2 ~
    execute on passengers at @s run tp @s ~ ~ ~ ~-2 ~

# particle
    particle snowflake ~ ~0.2 ~ 0.8 0.1 0.8 0.1 1 normal @a
    execute at @s run function asset:object/1126.freeze_trap/tick/vfx/blue
    execute on passengers rotated as @s run function asset:object/1126.freeze_trap/tick/vfx/white

# playsound
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run playsound block.glass.break neutral @a ~ ~ ~ 0.2 1.8 0
    execute if data storage asset:context this{Interval:0} run data modify storage asset:context this.Interval set value 3

# ヒット判定
    execute if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:object/1126.freeze_trap/tick/boom

# 消滅時に爆発
    execute if score @s General.Object.Tick matches 400.. run function asset:object/1126.freeze_trap/tick/boom
