#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/3.play_animation
#
# アニメーションのイベントハンドラ 怯み・終了 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/40_2_damage_end/tween {duration:1, to_frame: 0}
