#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/3.play_animation
#
# アニメーションのイベントハンドラ Hgフルバースト アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/8_0_hg_fullburst_start/tween {duration:1, to_frame: 0}
