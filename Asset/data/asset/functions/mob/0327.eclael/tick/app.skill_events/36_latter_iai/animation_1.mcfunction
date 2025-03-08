#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/animation_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main_turn

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/36_quick_iai_turn/tween {duration:1, to_frame: 1}
