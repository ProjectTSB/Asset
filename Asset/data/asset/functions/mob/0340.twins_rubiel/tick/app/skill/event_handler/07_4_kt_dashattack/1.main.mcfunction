#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/1.main
#
# アニメーションのイベントハンドラ Kt二刀流水平斬り
# 二刀流に変化し、２度水平斬りを行う
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：80tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..8 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..6 at @s positioned ^ ^0.1 ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 11..25 at @s positioned ^ ^ ^0.6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 26..35 at @s run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 26..35 at @s run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 26..30 at @s positioned ^ ^0.1 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 26..35 at @s positioned ^ ^ ^0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 36..41 at @s positioned ^ ^-0.2 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 36..41 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s positioned ^ ^ ^0.6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 42..48 at @s positioned ^ ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 66..75 at @s positioned ^ ^0.05 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 12 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 12 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 16 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 16 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 20 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 20 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 24 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 24 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 41 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 41 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 41 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 43 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3

# 回転演出
    execute if score @s 9G.AnimationTimer matches 12 at @s positioned ~ ~1.2 ~ rotated ~ 0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 13 at @s positioned ~ ~1.2 ~ rotated ~ 22.5 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 14 at @s positioned ~ ~1.2 ~ rotated ~ 45 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 15 at @s positioned ~ ~1.2 ~ rotated ~ 67.5 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 16 at @s positioned ~ ~1.2 ~ rotated ~ 90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 17 at @s positioned ~ ~1.2 ~ rotated ~180 22.5 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 18 at @s positioned ~ ~1.2 ~ rotated ~180 45 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 19 at @s positioned ~ ~1.2 ~ rotated ~180 67.5 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 20 at @s positioned ~ ~1.2 ~ rotated ~180 0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 21 at @s positioned ~ ~1.2 ~ rotated ~180 -22.5 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 22 at @s positioned ~ ~1.2 ~ rotated ~180 -45 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 23 at @s positioned ~ ~1.2 ~ rotated ~180 -67.5 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin
    execute if score @s 9G.AnimationTimer matches 24 at @s positioned ~ ~1.2 ~ rotated ~180 -90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.3.particle_spin

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 41 at @s positioned ^ ^1 ^1.4 rotated ~90 ~40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.2.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 41 at @s positioned ^ ^1 ^1.4 rotated ~90 ~-40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/6.1.particle_slash_red

# 攻撃
    execute if score @s 9G.AnimationTimer matches 12..24 at @s positioned ^ ^1 ^ if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/5.1.damage_spin
    execute if score @s 9G.AnimationTimer matches 41 at @s positioned ^ ^1 ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/5.2.damage_cross

# 終了
    execute if score @s 9G.AnimationTimer matches 81.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/2.end
