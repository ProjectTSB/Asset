#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main_normal
#
# アニメーションのイベントハンドラ 曲射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main

# 演出
    execute if score @s 93.AnimationTimer matches 147 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
    execute if score @s 93.AnimationTimer matches 147 run particle flash ^ ^1 ^5 0 0 0 0 1
    execute if score @s 93.AnimationTimer matches 147 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
    execute if score @s 93.AnimationTimer matches 147 positioned ^ ^3 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/particle_jump
    execute if score @s 93.AnimationTimer matches 148 positioned ^ ^6 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/particle_jump

# 移動
    execute if score @s 93.AnimationTimer matches 150 run tp @s ~ ~2 ~ ~ 0
