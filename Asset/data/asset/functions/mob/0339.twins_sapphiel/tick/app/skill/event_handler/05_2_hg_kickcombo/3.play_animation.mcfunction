#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/3.play_animation
#
# アニメーションのイベントハンドラ Hg3段蹴り アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/5_2_hg_kickcombo/tween {duration:1, to_frame: 0}
