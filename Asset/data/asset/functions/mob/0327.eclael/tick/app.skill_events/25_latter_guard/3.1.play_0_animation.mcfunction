#> asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/3.1.play_0_animation
#
# アニメーションのイベントハンドラ 後半・ガード アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/**

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/25_0_guard_0/tween {duration:1, to_frame: 1}
