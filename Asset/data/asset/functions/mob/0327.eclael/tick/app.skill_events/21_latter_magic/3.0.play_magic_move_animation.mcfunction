#> asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/3.0.play_magic_move_animation
#
# アニメーションのイベントハンドラ 前半・射撃 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/21_0_latter_attack_magic_0/tween {duration:1, to_frame: 1}
