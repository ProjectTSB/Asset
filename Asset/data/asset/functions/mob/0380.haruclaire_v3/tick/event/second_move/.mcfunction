#> asset:mob/0380.haruclaire_v3/tick/event/second_move/
#
# 移動
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# アニメーション再生
    execute if score @s AK.EventTimer matches 1 run function asset:mob/0380.haruclaire_v3/tick/event/second_move/play_animation

# 移動
    execute if score @s AK.EventTimer matches 1 run function asset:mob/0380.haruclaire_v3/tick/util/calc_vector.m {Tick:35}
    execute if score @s AK.EventTimer matches 1..20 run function asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector
    execute if score @s AK.EventTimer matches 1..10 at @s run function asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector
    execute if score @s AK.EventTimer matches 1..5 at @s run function asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector
    execute if score @s AK.EventTimer matches 1..8 at @s positioned ~ ~0.2 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
    execute if score @s AK.EventTimer matches 13..20 at @s positioned ~ ~-0.2 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
    execute if entity @s[tag=AK.Temp.FixedRotation] if score @s AK.EventTimer matches 21.. at @s run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_center
    execute unless entity @s[tag=AK.Temp.FixedRotation] if score @s AK.EventTimer matches 21.. at @s run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
    execute if entity @s[tag=AK.Temp.FixedRotation] if score @s AK.EventTimer matches 30.. at @s facing entity @e[type=marker,tag=AK.CenterPosition,distance=..80,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute unless entity @s[tag=AK.Temp.FixedRotation] if score @s AK.EventTimer matches 30.. at @s facing entity @p[tag=AK.MainTarget,distance=..80] feet run tp @s ~ ~ ~ ~ 0

# 演出
    execute if score @s AK.EventTimer matches 2 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.3
    function asset:mob/0380.haruclaire_v3/tick/event/second_move/sound_flap

# 終了
    execute if score @s AK.EventTimer matches 30.. run function asset:mob/0380.haruclaire_v3/tick/event/second_move/end
