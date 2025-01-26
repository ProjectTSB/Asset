#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.1.play_set_animation
#
# アニメーションのイベントハンドラ Scワープ連撃 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/13_0_scythe_warp_0/tween {duration:1, to_frame: 0}
