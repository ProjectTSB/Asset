#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/3.play_animation
#
# アニメーションのイベントハンドラ Kt二刀流水平斬り アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/7_2_katana_horizon_w/tween_play
