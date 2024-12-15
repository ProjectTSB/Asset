#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_5_damage_stun/3.play_animation
#
# アニメーションのイベントハンドラ 怯み・スタン アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_5_damage_stun/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/40_4_damage_stun/tween {duration:1, to_frame: 0}
