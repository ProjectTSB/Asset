#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/1.main
#
# アニメーションのイベントハンドラ Kt移動斬り
# 素早く前進しつつ、斬りかかる
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：35tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..12 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..10 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
    execute if score @s 9G.AnimationTimer matches 1..10 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 25..28 at @s positioned ^0.1 ^ ^2.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 29..33 at @s positioned ^0.1 ^ ^0.7 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 34..37 at @s positioned ^0.1 ^ ^0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 18 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 27 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 27 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 29 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 29 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 25..32 run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.05 1

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 25 at @s positioned ^-1 ^1.0 ^ rotated ~120 ~0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 26..28 at @s positioned ^-1.2 ^1.0 ^ rotated ~100 ~0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 29..30 at @s positioned ^-1.5 ^1.0 ^ rotated ~80 ~0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 31 at @s positioned ^-1 ^1.0 ^ rotated ~50 ~0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/6.1.particle_slash

# 攻撃
    execute if score @s 9G.AnimationTimer matches 25..29 at @s positioned ^-1 ^ ^ if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 36.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/2.end
