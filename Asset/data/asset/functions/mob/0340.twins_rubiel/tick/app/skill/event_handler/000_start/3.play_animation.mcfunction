#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/000_start/3.play_animation
#
# アニメーションのイベントハンドラ 登場 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/000_start/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/0_0_start/tween_play
