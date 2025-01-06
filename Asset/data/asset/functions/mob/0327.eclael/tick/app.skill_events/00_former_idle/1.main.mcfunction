#> asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/1.main
#
# アニメーションのイベントハンドラ 前半・待機
# その場でふよふよする．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：60tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/3.play_animation

# 表情
    execute if score @s 93.AnimationTimer matches 1 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/variants/default/apply
    execute if score @s 93.AnimationTimer matches 45 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/variants/blink/apply
    execute if score @s 93.AnimationTimer matches 50 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/variants/default/apply

# 終了
    execute if score @s 93.AnimationTimer matches 61.. run function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/2.end
