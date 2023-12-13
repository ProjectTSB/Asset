#> asset:mob/0349.louvert_soul_quake/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0349.louvert_soul_quake/tick/1.trigger

# スコア上昇
    scoreboard players add @s 9P.Tick 1

# 音
    execute if score @s 9P.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 0.5 2 0

# VFX
    # スコア調整
    scoreboard players operation $9P.Temp 9P.Tick = @s 9P.Tick
    scoreboard players operation $9P.Temp 9P.Tick %= $4 Const
    execute if score @s 9P.Tick matches ..20 if score $9P.Temp 9P.Tick matches 1 run function asset:mob/0349.louvert_soul_quake/tick/3.vfx

# 処理
    execute if score @s 9P.Tick matches 21 run function asset:mob/0349.louvert_soul_quake/tick/4.cast