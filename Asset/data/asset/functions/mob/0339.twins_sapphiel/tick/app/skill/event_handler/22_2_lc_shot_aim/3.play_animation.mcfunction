#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_2_lc_shot_aim/3.play_animation
#
# アニメーションのイベントハンドラ Lc射撃・エイム アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_2_lc_shot_aim/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/21_1_lc_shot_aim/tween {duration:1, to_frame: 0}
