#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/020_kt_idle/3.play_animation
#
# アニメーションのイベントハンドラ Kt待機 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/020_kt_idle/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/2_0_0_idle_katana_normal/tween_play
