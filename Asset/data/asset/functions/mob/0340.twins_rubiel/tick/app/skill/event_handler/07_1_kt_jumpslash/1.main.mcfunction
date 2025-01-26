#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/1.main
#
# アニメーションのイベントハンドラ Kt飛び込み斬り
# 高く飛びあがり、敵の頭上から刀を振り下ろす
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：43tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..32 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 14..18 at @s positioned ^ ^0.2 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 19..23 at @s positioned ^ ^0.1 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9G.AnimationTimer matches 12 positioned as @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^4 ^-3 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 13 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/4.calc_vector_0
        execute if score @s 9G.AnimationTimer matches 28 positioned as @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-2 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 29 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/4.calc_vector_1
        execute if score @s 9G.AnimationTimer matches 13..26 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
        execute if score @s 9G.AnimationTimer matches 33..37 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 13 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 33 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 33 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 35 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 35 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 37 run playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9G.AnimationTimer matches 37 at @s run particle block quartz_block ~ ~0.1 ~ 0.5 0 0.5 0 30

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 33 at @s positioned ^ ^2.0 ^1 rotated ~0 -30 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 34..37 at @s positioned ^ ^1.0 ^2 rotated ~0 -10 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/6.1.particle_slash

# 攻撃
    execute if score @s 9G.AnimationTimer matches 33..37 at @s positioned ^ ^1 ^2 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 44.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/2.end
