#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_1.play_slash_0_animation
#
# アニメーションのイベントハンドラ 前半・連続斬り アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/2_1_former_slash_0/tween {duration:1, to_frame: 1}
