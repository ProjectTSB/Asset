#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/select_pos
#
# 召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/

# ノーマル以下なら 座標 + エリア内拡散で召喚
# ハード以上なら (座標 or 偏差) + エリア内拡散で召喚
    execute if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/50 run tag @s add 1N.Random
    execute if entity @s[tag=!1N.Random] at @a[distance=..50,sort=random,limit=2] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/summon
    execute if entity @s[tag=1N.Random] at @a[distance=..50,sort=random,limit=2] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/predict_set
    function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/spread

# リセット
    tag @s remove 1N.Random
