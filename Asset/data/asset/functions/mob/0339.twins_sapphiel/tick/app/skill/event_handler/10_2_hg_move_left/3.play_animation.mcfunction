#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/3.play_animation
#
# アニメーションのイベントハンドラ Hgステップ・左 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/10_1_hg_move_left/tween {duration:1, to_frame: 0}
