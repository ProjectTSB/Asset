#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main_hard
#
# アニメーションのイベントハンドラ 曲射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main

# 演出
    execute if score @s 93.AnimationTimer matches 126 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 2 1.3
    execute if score @s 93.AnimationTimer matches 126..139 run playsound item.crossbow.loading_middle hostile @a ~ ~ ~ 2 1.3
    execute if score @s 93.AnimationTimer matches 169 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
    execute if score @s 93.AnimationTimer matches 169 run particle flash ^ ^1 ^5 0 0 0 0 1
    execute if score @s 93.AnimationTimer matches 169 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
    execute if score @s 93.AnimationTimer matches 169 positioned ^ ^3 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/particle_jump
    execute if score @s 93.AnimationTimer matches 170 positioned ^ ^6 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/particle_jump

# 攻撃
    execute if score @s 93.AnimationTimer matches 125 at @s run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/prediction_2
    execute if score @s 93.AnimationTimer matches 140 at @s run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/attack_2

# 移動
    execute if score @s 93.AnimationTimer matches 172 run tp @s ~ ~2 ~ ~ 0
