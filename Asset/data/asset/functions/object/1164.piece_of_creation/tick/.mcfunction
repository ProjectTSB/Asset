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

#一番近くのプレイヤーにタグをつける
    tag @p[gamemode=!spectator,tag=!Death,distance=..3] add 1164.Target

# 近くのプレイヤーに自身の向きを変えずに追尾
    execute at @s facing entity @p[tag=1164.Target,distance=..3] eyes positioned ^ ^ ^0.25 run tp @s ~ ~ ~

# playerとの接触処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=1164.Target,dx=0] run function asset:object/1164.piece_of_creation/tick/hit_player

# リセット
    tag @a[tag=1164.Target,distance=..16] remove 1164.Target

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=200..}] run function asset:object/1164.piece_of_creation/tick/kill
