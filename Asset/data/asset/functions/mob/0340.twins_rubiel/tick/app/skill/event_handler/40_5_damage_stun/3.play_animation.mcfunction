#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/3.play_animation
#
# アニメーションのイベントハンドラ 怯み・スタン アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/40_4_damage_stun/tween {duration:1, to_frame: 0}
