#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/animation_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/32_0_jump_start/tween {duration:1, to_frame: 1}
