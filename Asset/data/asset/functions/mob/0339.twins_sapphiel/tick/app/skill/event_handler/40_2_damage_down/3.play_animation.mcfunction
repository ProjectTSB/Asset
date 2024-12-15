#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_2_damage_down/3.play_animation
#
# アニメーションのイベントハンドラ 怯み・ダウン アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_2_damage_down/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/40_1_damage_down/tween {duration:1, to_frame: 0}
