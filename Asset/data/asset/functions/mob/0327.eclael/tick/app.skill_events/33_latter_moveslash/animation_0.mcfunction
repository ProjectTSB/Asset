#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/animation_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/33_0_moveslash_start/tween {duration:1, to_frame: 1}
