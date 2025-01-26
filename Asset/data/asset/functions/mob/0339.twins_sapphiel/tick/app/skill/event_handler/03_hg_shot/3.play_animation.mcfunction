#> asset:mob/0317.haruclaire/tick/app.skill_events/03_hg_shot/3.play_animation
#
# アニメーションのイベントハンドラ Hg待機 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/3_0_hg_shot_0/tween {duration:1, to_frame: 0}
