#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/3.play_animation
#
# アニメーションのイベントハンドラ Kt真空斬り アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/3_3_katana_vacu_slash/tween {duration:1, to_frame: 0}
