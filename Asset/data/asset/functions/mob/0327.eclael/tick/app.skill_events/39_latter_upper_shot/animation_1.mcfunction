#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/animation_1
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/34_field_slash_end/tween {duration:1, to_frame: 1}
