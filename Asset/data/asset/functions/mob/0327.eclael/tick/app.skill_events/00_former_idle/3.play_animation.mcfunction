#> asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/3.play_animation
#
# アニメーションのイベントハンドラ 前半・待機 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/0_0_former_idle_normal/tween {duration:1, to_frame: 1}
