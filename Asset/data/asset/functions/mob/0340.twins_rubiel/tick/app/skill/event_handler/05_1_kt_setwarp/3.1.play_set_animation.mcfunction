#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/3.1.play_set_animation
#
# アニメーションのイベントハンドラ Ktワープポイント設置 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/5_0_katana_warp_0/tween {duration:1, to_frame: 0}
