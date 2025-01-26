#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/3.play_animation
#
# アニメーションのイベントハンドラ Kt待機 アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/1.main

# 再生
    execute if score @s 9G.MoodPoint matches 50.. as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/2_0_1_idle_katana_fun/tween {duration:1, to_frame: 0}
    execute if score @s 9G.MoodPoint matches -49..49 as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/2_0_0_idle_katana_normal/tween {duration:1, to_frame: 0}
    execute if score @s 9G.MoodPoint matches ..-50 as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/2_0_2_idle_katana_angry/tween {duration:1, to_frame: 0}
