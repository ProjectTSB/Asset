#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/21_lc_start/3.play_animation
#
# アニメーションのイベントハンドラ Lc召喚 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/21_lc_start/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/20_0_lc_start/tween_play
