#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/3.1.play_start_animation
#
# アニメーションのイベントハンドラ Kt大外刈り アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/8_2_katana_throw/tween {duration:1, to_frame: 0}
