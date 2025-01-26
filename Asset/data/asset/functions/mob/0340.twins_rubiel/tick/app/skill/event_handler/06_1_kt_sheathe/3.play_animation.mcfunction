#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/3.play_animation
#
# アニメーションのイベントハンドラ Kt納刀 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/6_0_katana_sheathe/tween {duration:1, to_frame: 0}
