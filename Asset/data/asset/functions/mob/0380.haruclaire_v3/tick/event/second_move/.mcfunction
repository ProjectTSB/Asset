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
    execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/30_0_move_back

# 移動
    execute if score @s AK.EventTimer matches 1 run function asset:mob/0380.haruclaire_v3/tick/util/calc_vector.m {Tick:10}
    execute if score @s AK.EventTimer matches 1..10 run function asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector
    execute if entity @s[tag=AK.Temp.FixedRotation] at @s run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_center
    execute unless entity @s[tag=AK.Temp.FixedRotation] at @s run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target

# 演出
    execute if score @s AK.EventTimer matches 2 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.3

# 終了
    execute if score @s AK.EventTimer matches 30.. run function asset:mob/0380.haruclaire_v3/tick/event/second_move/end
