#> asset:mob/0410.heiloang/tick/animated_java/tick/10_4_power_breath_continue_end
#
# アニメーション再生
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.10_4_power_breath_continue_end.frame matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.10_4_power_breath_continue_end.frame matches 47 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
