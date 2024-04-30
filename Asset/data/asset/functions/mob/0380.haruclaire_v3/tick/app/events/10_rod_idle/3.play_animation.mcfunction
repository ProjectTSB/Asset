#> asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/3.play_animation
#
# スキルのイベントハンドラ 前半戦・待機 アニメーション再生
#
# @within function asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/1.main

# 再生
    execute as @e[type=item_display,tag=AK.ModelRoot,tag=AK.Model.Target] run function animated_java:haruclaire_v3/animations/1_0_rod_idle/play
