#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/1.main
#
# アニメーションのイベントハンドラ Ktカウンター居合斬り
# 納刀中に攻撃を受けた場合、回避して即座に攻撃する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：31tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..5 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1 run summon area_effect_cloud ^ ^0.1 ^ {CustomNameVisible:0b,Particle:"block air",Duration:13,Tags:["Object","9G.Temp.Target.Aec.1"]}
    execute if score @s 9G.AnimationTimer matches 1 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] positioned ^-2 ^ ^-3 facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 13 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 2
    execute if score @s 9G.AnimationTimer matches 1 run particle flash ~ ~ ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 1 facing entity @s feet run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/6.2.particle_move
    execute if score @s 9G.AnimationTimer matches 1 run scoreboard players reset @s Temporary
    execute if score @s 9G.AnimationTimer matches 12 run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 2
    execute if score @s 9G.AnimationTimer matches 12 run particle flash ~ ~ ~ 0 0 0 0 1

# 攻撃
    execute if score @s 9G.AnimationTimer matches 7 positioned ^ ^ ^2 rotated ~90 -40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 7 positioned ^ ^ ^2.5 rotated ~90 -40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 32.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/2.end
