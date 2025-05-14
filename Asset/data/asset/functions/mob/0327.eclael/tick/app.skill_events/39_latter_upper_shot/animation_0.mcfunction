#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/animation_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main

# 再生
    execute if predicate api:global_vars/difficulty/max/normal as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/38_upper_shot_combo/tween {duration:1, to_frame: 1}
    execute if predicate api:global_vars/difficulty/min/3_blessless as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/38_upper_shot_combo_hard/tween {duration:1, to_frame: 1}
