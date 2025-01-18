#> asset:mob/0411.behemoth/tick/animated_java/tick/6_1_flymove_end
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0411.behemoth/tick/animated_java/tick/

# 演出
    execute if score @s aj.6_1_flymove_end.frame matches 18 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
