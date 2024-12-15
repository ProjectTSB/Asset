#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/30_sync_goalong/3.play_animation
#
# アニメーションのイベントハンドラ Sync集合 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/30_sync_goalong/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/30_0_sync_goalong/tween {duration:1, to_frame: 0}
