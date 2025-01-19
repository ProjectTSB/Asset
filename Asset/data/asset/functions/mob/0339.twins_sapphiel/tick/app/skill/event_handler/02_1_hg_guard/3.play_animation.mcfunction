#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/02_1_hg_guard/3.play_animation
#
# アニメーションのイベントハンドラ Hg待機 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/02_1_hg_guard/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/2_1_hg_guard/tween {duration:1, to_frame: 0}
