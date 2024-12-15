#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/3.play_animation
#
# アニメーションのイベントハンドラ 怯みかばい攻撃 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/41_0_cover/tween {duration:1, to_frame: 0}
