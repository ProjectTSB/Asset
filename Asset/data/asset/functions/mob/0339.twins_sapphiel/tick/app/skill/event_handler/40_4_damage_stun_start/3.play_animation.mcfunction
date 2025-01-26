#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_4_damage_stun_start/3.play_animation
#
# アニメーションのイベントハンドラ 怯み・スタン開始 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_4_damage_stun_start/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/40_3_damage_stun_start/tween {duration:1, to_frame: 0}
