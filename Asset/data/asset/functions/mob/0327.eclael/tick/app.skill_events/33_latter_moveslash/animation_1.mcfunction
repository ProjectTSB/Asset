#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/animation_1
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/33_1_moveslash_1/tween {duration:1, to_frame: 1}
