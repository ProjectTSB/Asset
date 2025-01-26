#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/3.1.play_move_animation
#
# アニメーションのイベントハンドラ Syncぶん投げ アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/32_0_sync_throwattack_0/tween {duration:1, to_frame: 0}
