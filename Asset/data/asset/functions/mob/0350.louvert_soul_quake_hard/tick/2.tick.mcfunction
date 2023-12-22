#> asset:mob/0350.louvert_soul_quake_hard/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0350.louvert_soul_quake_hard/tick/1.trigger

# スコア上昇
    scoreboard players add @s 9Q.Tick 1

# 追尾
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-4 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.35 ~ ~

# VFX
    # スコア調整
    scoreboard players operation $9Q.Temp 9Q.Tick = @s 9Q.Tick
    scoreboard players operation $9Q.Temp 9Q.Tick %= $8 Const
    execute if score @s 9Q.Tick matches ..120 if score $9Q.Temp 9Q.Tick matches 1 run data modify storage api: Argument.ID set value 349
    execute if score @s 9Q.Tick matches ..120 if score $9Q.Temp 9Q.Tick matches 1 positioned ~ ~2 ~ run function api:mob/summon

# キル
    execute if score @s 9Q.Tick matches 121 run kill @s