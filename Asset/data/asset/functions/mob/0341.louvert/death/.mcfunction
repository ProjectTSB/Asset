#> asset:mob/0341.louvert/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/341/death

# モデルは先にキルすべし
    function animated_java:louvert/remove/all

# 召喚
    data modify storage api: Argument.ID set value 2191
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..200] positioned ~ ~ ~ run function api:object/summon

# キル処理
    kill @e[type=item_display,tag=9H.Final.Display]
    kill @e[type=item_display,tag=9H.Final.Display.Bullet]
    kill @e[type=marker,tag=9H.Marker.SummonPoint,distance=..200]
    kill @e[type=marker,tag=2142.SoulBombhard,distance=..200]

# 継承元の処理
    function asset:mob/super.death
