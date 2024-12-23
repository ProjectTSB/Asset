#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/8_0_rod_punch
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.8_0_rod_punch.frame matches 1 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.8_0_rod_punch.frame matches 4 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.8_0_rod_punch.frame matches 13 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.8_0_rod_punch.frame matches 21 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.8_0_rod_punch.frame matches 25 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.8_0_rod_punch.frame matches 34 run function animated_java:haruclaire_aj/variants/jito/apply
    execute if score @s aj.8_0_rod_punch.frame matches 39 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.8_0_rod_punch.frame matches 52 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.8_0_rod_punch.frame matches 59 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.8_0_rod_punch.frame matches 91 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.8_0_rod_punch.frame matches 104 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.8_0_rod_punch.frame matches 129 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.8_0_rod_punch.frame matches 135 run function animated_java:haruclaire_aj/variants/default/apply
