#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_3_damage_end/3.play_animation
#
# アニメーションのイベントハンドラ 怯み・終了 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_3_damage_end/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/40_2_damage_end/tween_play
