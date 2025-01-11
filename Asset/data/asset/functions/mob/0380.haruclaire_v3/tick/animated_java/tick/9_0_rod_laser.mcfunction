#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/9_0_rod_laser
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.9_0_rod_laser.frame matches 1 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.9_0_rod_laser.frame matches 15 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.9_0_rod_laser.frame matches 52 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.9_0_rod_laser.frame matches 57 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.9_0_rod_laser.frame matches 72 run function animated_java:haruclaire_aj/variants/damage/apply
    execute if score @s aj.9_0_rod_laser.frame matches 78 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.9_0_rod_laser.frame matches 83 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.9_0_rod_laser.frame matches 123 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.9_0_rod_laser.frame matches 159 run function animated_java:haruclaire_aj/variants/default/apply
