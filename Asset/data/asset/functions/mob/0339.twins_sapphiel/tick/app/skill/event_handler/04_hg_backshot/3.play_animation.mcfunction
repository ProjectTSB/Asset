#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/04_hg_backshot/3.play_animation
#
# アニメーションのイベントハンドラ Hg引き撃ち アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/04_hg_backshot/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/4_0_hg_backstep_shot/tween {duration:1, to_frame: 0}
