#> asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/3_1.play_idle_animation
#
# アニメーションのイベントハンドラ 前半・魔法 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/0_0_former_idle_normal/tween {duration:1, to_frame: 1}
