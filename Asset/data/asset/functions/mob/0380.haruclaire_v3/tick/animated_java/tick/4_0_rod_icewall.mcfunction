#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/4_0_rod_icewall
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.4_0_rod_icewall.frame matches 1 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.4_0_rod_icewall.frame matches 7 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.4_0_rod_icewall.frame matches 32 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.4_0_rod_icewall.frame matches 52 run function animated_java:haruclaire_aj/variants/damage/apply
    execute if score @s aj.4_0_rod_icewall.frame matches 59 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.4_0_rod_icewall.frame matches 74 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.4_0_rod_icewall.frame matches 79 run function animated_java:haruclaire_aj/variants/default/apply
