#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/3.select_pos
#
# 召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/2.interval

# ノーマル以下なら 座標 + エリア内拡散で召喚
# ハード以上なら (座標 or 偏差) + エリア内拡散で召喚
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/50 run tag @s add 1N.Random
    execute if entity @s[tag=!1N.Random] at @a[distance=..50,sort=random,limit=2] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/7.summon
    execute if entity @s[tag=1N.Random] at @a[distance=..50,sort=random,limit=2] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/4.predict
    function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/6.spread

# リセット
    tag @s remove 1N.Random
    scoreboard players reset $Random Temporary
