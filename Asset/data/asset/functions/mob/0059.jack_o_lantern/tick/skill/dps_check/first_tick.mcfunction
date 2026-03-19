#> asset:mob/0059.jack_o_lantern/tick/skill/dps_check/first_tick
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/

# 中央に戻る
    execute positioned as @e[type=marker,tag=1N.SpawnMarker,distance=..64,limit=1] run tp @s ~ ~ ~

# 演出
    execute at @s run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# カボチャ召喚
    execute at @s rotated 000 0 positioned ^ ^ ^33 facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..128,limit=1] eyes run function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/summon
    execute at @s rotated 090 0 positioned ^ ^ ^33 facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..128,limit=1] eyes run function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/summon
    execute at @s rotated 180 0 positioned ^ ^ ^33 facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..128,limit=1] eyes run function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/summon
    execute at @s rotated 270 0 positioned ^ ^ ^33 facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..128,limit=1] eyes run function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/summon

# NoAI化
    data modify entity @s NoAI set value 1b
