#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/6_0_rod_icefang
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.6_0_rod_icefang.frame matches 1 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.6_0_rod_icefang.frame matches 4 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.6_0_rod_icefang.frame matches 12 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.6_0_rod_icefang.frame matches 45 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.6_0_rod_icefang.frame matches 50 run function animated_java:haruclaire_aj/variants/default/apply
