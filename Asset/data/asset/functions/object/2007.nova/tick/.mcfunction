#> asset:object/2007.nova/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2007/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# TP処理
    tp @s ~ ~ ~ ~17 ~

# VFX 処理
    execute if score @s General.Object.Tick matches 1 run function asset:object/2007.nova/tick/vfx/summon_area

# 召喚時に音を鳴らす
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# ノヴァを大きくする
    execute if score @s General.Object.Tick matches 40 run function asset:object/2007.nova/tick/move/1
    execute if score @s General.Object.Tick matches 41 positioned ~ ~15 ~ run data merge entity @e[type=item_display,tag=2007.Nova,distance=..0.001,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,10f,10f]}}
    execute if score @s General.Object.Tick matches 39 run playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.5 0.0
    execute if score @s General.Object.Tick matches 39 run playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.4 0.0
    execute if score @s General.Object.Tick matches 39 run playsound block.beacon.power_select hostile @a[distance=..32] ~ ~ ~ 2 1.2 0.0

# 落下
    execute if score @s General.Object.Tick matches 46 run function asset:object/2007.nova/tick/move/2
    execute if score @s General.Object.Tick matches 48 run function asset:object/2007.nova/tick/move/3
    execute if score @s General.Object.Tick matches 50 run function asset:object/2007.nova/tick/move/4
    execute if score @s General.Object.Tick matches 52 run function asset:object/2007.nova/tick/move/5
    execute if score @s General.Object.Tick matches 54 run function asset:object/2007.nova/tick/move/6
    execute if score @s General.Object.Tick matches 56 run function asset:object/2007.nova/tick/move/7
    execute if score @s General.Object.Tick matches 58 run function asset:object/2007.nova/tick/move/8

# ノヴァを小さくする
    execute if score @s General.Object.Tick matches 60 run function asset:object/2007.nova/tick/move/9

# 爆発処理
    execute if score @s General.Object.Tick matches 62 run function asset:object/2007.nova/tick/cast
