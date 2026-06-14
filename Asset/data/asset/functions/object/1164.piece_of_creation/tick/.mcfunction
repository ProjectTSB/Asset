#> asset:object/1164.piece_of_creation/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1164/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 下にゆっくり落ちる
    execute if block ~ ~-0.6 ~ #lib:no_collision/ run tp @s ~ ~-0.03 ~
# ゆっくり回転
    execute at @s run tp @s ~ ~ ~ ~3 ~

# 近くのプレイヤーに自身の向きを変えずに追尾
    execute at @s facing entity @a[distance=..2,limit=1] eyes positioned ^ ^ ^0.25 run tp @s ~ ~ ~

# playerに触れるとMPを回復して消滅
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[gamemode=!spectator,tag=!Death,dx=0,limit=1] run function asset:object/1164.piece_of_creation/tick/hit_player

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
