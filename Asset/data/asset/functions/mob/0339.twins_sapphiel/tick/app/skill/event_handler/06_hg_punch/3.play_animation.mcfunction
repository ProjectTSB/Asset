#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/3.play_animation
#
# アニメーションのイベントハンドラ Hgライダーキック アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/6_0_hg_punch/tween {duration:1, to_frame: 0}
