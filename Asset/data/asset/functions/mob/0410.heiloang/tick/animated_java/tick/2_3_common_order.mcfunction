#> asset:mob/0410.heiloang/tick/animated_java/tick/2_3_common_order
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.2_3_common_order.frame matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.2_3_common_order.frame matches 21 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.2_3_common_order.frame matches 21 positioned ~ ~30 ~ run playsound entity.ender_dragon.growl hostile @a[distance=..80] ~ ~ ~ 1 0.7 0.7
    execute if score @s aj.2_3_common_order.frame matches 21 positioned ~ ~30 ~ run playsound entity.wither.ambient hostile @a[distance=..80] ~ ~ ~ 1 0.5 0.2
