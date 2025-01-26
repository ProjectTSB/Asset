#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/3.play_animation
#
# アニメーションのイベントハンドラ Ktガード アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/2_1_katana_guard/tween {duration:1, to_frame: 0}
