#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/3_0_rod_move
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.3_0_rod_move.frame matches 1 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.3_0_rod_move.frame matches 15 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.3_0_rod_move.frame matches 20 run function animated_java:haruclaire_aj/variants/default/apply
