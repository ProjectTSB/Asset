#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/0_0_start
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.0_0_start.frame matches 1 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.0_0_start.frame matches 9 run function animated_java:haruclaire_aj/variants/damage/apply
    execute if score @s aj.0_0_start.frame matches 15 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.0_0_start.frame matches 25 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.0_0_start.frame matches 64 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.0_0_start.frame matches 97 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.0_0_start.frame matches 102 run function animated_java:haruclaire_aj/variants/default/apply
