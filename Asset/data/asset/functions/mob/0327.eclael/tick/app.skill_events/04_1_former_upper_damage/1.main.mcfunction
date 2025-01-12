#> asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/1.main
#
# アニメーションのイベントハンドラ 前半・曲射・怯み
# 曲射で自爆した際の動作．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 怯み
# animated javaアニメーション再生 (長さ：80tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/3_0.play_damage_animation
# 移動
    execute if score @s 93.AnimationTimer matches 1..5 at @s positioned ^ ^-0.4 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 6..15 at @s positioned ^ ^-0.05 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport

## 終了
# animated javaアニメーション再生 (長さ：50tick)
    execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/3_1.play_end_animation
# 移動
    execute if score @s 93.AnimationTimer matches 106..111 at @s positioned ^ ^0.05 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 表情
    execute if score @s 93.AnimationTimer matches 1 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/variants/blink/apply
    execute if score @s 93.AnimationTimer matches 81 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/variants/wink/apply
    execute if score @s 93.AnimationTimer matches 111 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/variants/default/apply

# 終了
    execute if score @s 93.AnimationTimer matches 131.. run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/2.end
