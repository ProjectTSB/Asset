#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/3.play_animation
#
# アニメーションのイベントハンドラ Kt飛び込み斬り アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/7_0_katana_jumpslash/tween {duration:1, to_frame: 0}
