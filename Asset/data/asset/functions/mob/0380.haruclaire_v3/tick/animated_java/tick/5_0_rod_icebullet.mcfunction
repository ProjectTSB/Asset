#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/5_0_rod_icebullet
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.5_0_rod_icebullet.frame matches 1 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.5_0_rod_icebullet.frame matches 15 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.5_0_rod_icebullet.frame matches 52 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.5_0_rod_icebullet.frame matches 57 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.5_0_rod_icebullet.frame matches 94 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.5_0_rod_icebullet.frame matches 99 run function animated_java:haruclaire_aj/variants/default/apply
