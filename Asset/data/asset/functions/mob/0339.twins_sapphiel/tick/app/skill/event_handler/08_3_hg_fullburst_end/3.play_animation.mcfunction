#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/3.play_animation
#
# アニメーションのイベントハンドラ Hgフルバースト アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/8_2_hg_fullburst_end/tween {duration:1, to_frame: 0}
