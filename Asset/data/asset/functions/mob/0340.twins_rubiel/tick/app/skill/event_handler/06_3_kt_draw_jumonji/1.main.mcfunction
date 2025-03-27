#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/1.main
#
# アニメーションのイベントハンドラ Kt瑠火伊流・十文字
# 自己流奥義、大きく踏み込みつつ居合斬りを行う
# 抜刀直前（キラッの効果音）から攻撃までの間にダメージを受けた場合、体制を崩す
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：55tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..5 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..10 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
    execute if score @s 9G.AnimationTimer matches 1..7 at @s positioned ^ ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 14..18 at @s positioned ^ ^ ^0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 43..52 at @s positioned ^ ^0.05 ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9G.AnimationTimer matches 4 run summon area_effect_cloud ^ ^0.5 ^15 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 4 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/4.calc_vector
        execute if score @s 9G.AnimationTimer matches 8..12 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 8 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 8 run particle crit ^1 ^1.2 ^-1 0 0 0 1 30
    execute if score @s 9G.AnimationTimer matches 8..13 run particle firework ~ ~1 ~ 0 0 0 0.05 1
    execute if score @s 9G.AnimationTimer matches 13 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 13 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 0.8
    execute if score @s 9G.AnimationTimer matches 15 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 17 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 17 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 0.8
    execute if score @s 9G.AnimationTimer matches 19 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 13 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 17 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.3

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 12 at @s rotated ~-30 ~ positioned ^1 ^1.5 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 13 at @s rotated ~ ~ positioned ^ ^1.5 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 14 at @s rotated ~30 ~ positioned ^-1 ^1.5 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 16 at @s positioned ^ ^3.5 ^1.2 rotated ~90 90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 17 at @s positioned ^ ^1.5 ^1.2 rotated ~90 90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 18 at @s positioned ^ ^-0.5 ^1.2 rotated ~90 90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 13 at @s rotated ~ ~ positioned ^ ^1.5 ^1.8 rotated ~90 0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.2.particle_slash_light
    execute if score @s 9G.AnimationTimer matches 17 at @s rotated ~ ~ positioned ^ ^1.5 ^1.8 rotated ~90 90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/6.2.particle_slash_light

# 攻撃
    execute if score @s 9G.AnimationTimer matches 13 at @s positioned ^ ^1 ^2.5 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/5.damage
    execute if score @s 9G.AnimationTimer matches 17 at @s positioned ^ ^1 ^2.5 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/5.damage

# 怯み受け付け
    execute if score @s 9G.AnimationTimer matches 8 run tag @s add 9G.State.IsDamage
    execute if score @s 9G.AnimationTimer matches 12 run tag @s remove 9G.State.IsDamage

# 終了
    execute if score @s 9G.AnimationTimer matches 56.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/2.end
