#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/3.play_animation
#
# アニメーションのイベントハンドラ Sc待機 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/12_0_0_idle_scythe_normal/tween_play
