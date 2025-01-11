#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/1.main
#
# アニメーションのイベントハンドラ Kt斬り下がり
# 2回斬りつつ後ろに下がる
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：50tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..15 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..10 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 1..20 at @s positioned ^ ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 1..10 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
    execute if score @s 9G.AnimationTimer matches 21..25 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.7 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 28..35 at @s positioned ^ ^0.1 ^-0.5 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 36..43 at @s positioned ^ ^-0.05 ^-0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 44..50 at @s positioned ^ ^-0.05 ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 21 at @s positioned ^ ^1.0 ^1.2 rotated ~90 ~20 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 27 at @s positioned ^ ^1.4 ^0.8 rotated ~90 ~-10 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/6.1.particle_slash

# 攻撃
    execute if score @s 9G.AnimationTimer matches 22 at @s positioned ^ ^ ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/5.damage
    execute if score @s 9G.AnimationTimer matches 28 at @s positioned ^ ^ ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 51.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/2.end
