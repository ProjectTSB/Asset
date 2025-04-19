#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/animation_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/39_circle_slash/tween {duration:1, to_frame: 1}
