#> asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.2.play_sleep_animation
#
# アニメーションのイベントハンドラ 前半・居眠り アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main

# 低確率でレアモーションを再生する
    execute if predicate lib:random_pass_per/5 run tag @s add 93.Temp.Me
    execute if entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/0_2_former_idle_sleep_rare/tween {duration:1, to_frame: 1}
    execute unless entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/0_2_former_idle_sleep/tween {duration:1, to_frame: 1}
    tag @s remove 93.Temp.Me
