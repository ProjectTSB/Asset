#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_2.play_slash_1_animation
#
# アニメーションのイベントハンドラ 前半・連続斬り アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/2_2_former_slash_1/tween {duration:1, to_frame: 1}
