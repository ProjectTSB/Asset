#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/3.play_animation
#
# アニメーションのイベントハンドラ Hgワープポイント射撃 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/7_1_hg_heeloff/tween {duration:1, to_frame: 0}
