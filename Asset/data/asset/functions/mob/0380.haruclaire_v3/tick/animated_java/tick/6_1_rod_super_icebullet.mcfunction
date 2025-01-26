#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/6_1_rod_super_icebullet
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.6_1_rod_super_icebullet.frame matches 1 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.6_1_rod_super_icebullet.frame matches 15 run function animated_java:haruclaire_aj/variants/damage/apply
    execute if score @s aj.6_1_rod_super_icebullet.frame matches 95 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.6_1_rod_super_icebullet.frame matches 103 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.6_1_rod_super_icebullet.frame matches 120 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.6_1_rod_super_icebullet.frame matches 125 run function animated_java:haruclaire_aj/variants/default/apply
