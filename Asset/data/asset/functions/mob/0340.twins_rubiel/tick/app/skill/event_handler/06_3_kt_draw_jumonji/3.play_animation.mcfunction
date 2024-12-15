#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/3.play_animation
#
# アニメーションのイベントハンドラ Kt瑠火伊流・十文字 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/6_2_katana_sheathe_cross/tween {duration:1, to_frame: 0}
