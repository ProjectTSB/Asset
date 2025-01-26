#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/3.1.play_animation
#
# アニメーションのイベントハンドラ Hgステップ・右左 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/10_0_hg_move_right/tween {duration:1, to_frame: 0}
