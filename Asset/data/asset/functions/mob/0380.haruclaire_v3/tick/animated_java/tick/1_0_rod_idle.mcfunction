#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/1_0_rod_idle
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    execute if score @s aj.1_0_rod_idle.frame matches 1 run function animated_java:haruclaire_aj/variants/default/apply
    execute if score @s aj.1_0_rod_idle.frame matches 15 run function animated_java:haruclaire_aj/variants/blink/apply
    execute if score @s aj.1_0_rod_idle.frame matches 20 run function animated_java:haruclaire_aj/variants/default/apply

# 待機終了時、行動処理を呼び出す
    execute if score @s aj.1_0_rod_idle.frame matches 49 as @e[type=wither_skeleton,tag=AK.EntityRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/act/
