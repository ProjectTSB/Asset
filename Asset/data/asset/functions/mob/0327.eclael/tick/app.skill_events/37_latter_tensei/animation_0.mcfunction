#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/animation_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/37_fall_spear/tween {duration:1, to_frame: 1}
