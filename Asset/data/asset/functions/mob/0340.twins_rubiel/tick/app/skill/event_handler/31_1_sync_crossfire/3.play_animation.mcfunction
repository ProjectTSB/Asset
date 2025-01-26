#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_1_sync_crossfire/3.play_animation
#
# アニメーションのイベントハンドラ Sync交差攻撃 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_1_sync_crossfire/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/31_0_sync_crossfire_0/tween {duration:1, to_frame: 0}
