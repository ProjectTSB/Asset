#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/3.play_animation
#
# アニメーションのイベントハンドラ Ktカウンター居合斬り アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/6_3_katana_sheathe_counter/tween {duration:1, to_frame: 0}
