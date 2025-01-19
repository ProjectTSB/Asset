#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/3.1.play_start_animation
#
# アニメーションのイベントハンドラ Kt掴み アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/8_0_katana_throw_start_normal/tween {duration:1, to_frame: 0}
