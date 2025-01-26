#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/1.main
#
# アニメーションのイベントハンドラ Kt二刀流水平斬り
# 二刀流に変化し、２度水平斬りを行う
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：33tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..6 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..6 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 14..23 at @s positioned ^ ^ ^0.6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 24..28 at @s positioned ^ ^ ^0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 14 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 14 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 15 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 22 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 22 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 15 at @s rotated ~-30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/6.2.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 16 at @s rotated ~30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/6.2.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 23 at @s rotated ~-30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/6.1.particle_slash_red
    execute if score @s 9G.AnimationTimer matches 24 at @s rotated ~30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/6.1.particle_slash_red

# 攻撃
    execute if score @s 9G.AnimationTimer matches 16 at @s positioned ^ ^1 ^2 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/5.damage
    execute if score @s 9G.AnimationTimer matches 24 at @s positioned ^ ^1 ^2 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 34.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/2.end
