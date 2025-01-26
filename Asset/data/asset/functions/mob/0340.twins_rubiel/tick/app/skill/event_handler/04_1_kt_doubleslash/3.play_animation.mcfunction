#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/3.play_animation
#
# アニメーションのイベントハンドラ Kt斬り下がり アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/4_0_katana_slash_double/tween {duration:1, to_frame: 0}
