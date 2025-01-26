#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/3.2.play_slash_animation
#
# アニメーションのイベントハンドラ Kt大外刈り アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/8_3_katana_throw_pursuit/tween {duration:1, to_frame: 0}
