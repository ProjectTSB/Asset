#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/3.play_animation
#
# アニメーションのイベントハンドラ 後半・抜刀 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/31_0_field_thunder/tween {duration:1, to_frame: 1}
