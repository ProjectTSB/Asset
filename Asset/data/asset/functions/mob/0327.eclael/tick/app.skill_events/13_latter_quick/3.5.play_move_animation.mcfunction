#> asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.5.play_move_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/13_4_latter_quick_move/tween {duration:1, to_frame: 1}
