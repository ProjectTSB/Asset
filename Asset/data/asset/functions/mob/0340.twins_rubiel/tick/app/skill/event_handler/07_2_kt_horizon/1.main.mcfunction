#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/1.main
#
# アニメーションのイベントハンドラ Kt水平斬り
# 一回転して水平に刀を振る
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：30tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..10 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..6 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 18..22 at @s positioned ^ ^ ^0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 18 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 18 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 20 at @s positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/6.1.particle_slash

# 攻撃
    execute if score @s 9G.AnimationTimer matches 20 at @s positioned ^ ^1 ^2 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 31.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/2.end
