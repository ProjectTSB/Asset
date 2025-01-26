#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/3.play_animation
#
# アニメーションのイベントハンドラ Kt二刀流水平斬り アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/7_3_katana_dashattack_to_cross/tween {duration:1, to_frame: 0}
