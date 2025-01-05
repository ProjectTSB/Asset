#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/first_tick
#
# スキルの最初のtickで実行する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0
    particle dust 1 0.6 0 1.5 ~ ~3 ~ 0.4 2 0.4 0 200 normal @a
    particle dust 0.851 0 1 1.5 ~ ~3 ~ 0.4 2 0.4 0 200 normal @a

# 自身は透明化して上空で待機する
    item replace entity @s armor.head with air
    execute at @e[type=marker,tag=1N.SpawnMarker,distance=..50] run tp @s ~ ~50 ~
    effect give @s resistance 20 10 true
    data modify entity @s NoAI set value 1b
