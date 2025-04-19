#> asset:mob/0410.heiloang/tick/animated_java/tick/12_1_flymove_end
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.12_1_flymove_end.frame matches 21 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
