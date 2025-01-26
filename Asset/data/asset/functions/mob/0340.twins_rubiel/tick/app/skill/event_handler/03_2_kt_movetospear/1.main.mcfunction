#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/1.main
#
# アニメーションのイベントハンドラ Kt移動突き
# 側面に回り込み、突き攻撃を行う
# 突きはジャンプで回避可能
# ジャンプで回避したうえで刀の上に着地された場合、体制を崩す
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：80tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1 facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute if score @s 9G.AnimationTimer matches 2..44 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..6 at @s positioned ^0.8 ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 7..23 at @s positioned ^0.8 ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 24..33 at @s positioned ^0.4 ^ ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 34..38 at @s positioned ^ ^0.5 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 39..42 at @s positioned ^ ^0.2 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 65..75 at @s positioned ^ ^0.05 ^-0.05 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9G.AnimationTimer matches 34 positioned as @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-1 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 34 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/4.calc_vector_0
        execute if score @s 9G.AnimationTimer matches 45 positioned as @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-2 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 45 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/4.calc_vector_1
        execute if score @s 9G.AnimationTimer matches 36..40 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
        execute if score @s 9G.AnimationTimer matches 45..50 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector

# 演出
    execute if score @s 9G.AnimationTimer matches 1..33 run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.05 1
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 34 run playsound block.grass.step hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9G.AnimationTimer matches 34 run particle block quartz_block ~ ~0.1 ~ 0.7 0.1 0.7 0 20
    execute if score @s 9G.AnimationTimer matches 44 run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 65 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 45..50 at @s positioned ~ ~1 ~ run particle firework ~ ~ ~ 0.2 0.2 0.2 0.05 3
    execute if score @s 9G.AnimationTimer matches 45..50 at @s positioned ^-0.5 ^1 ^ rotated ~ 30 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 51 at @s positioned ^ ^0.1 ^1 rotated ~ -90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/6.2.particle_hit
    execute if score @s 9G.AnimationTimer matches 51 at @s positioned ^-0.1 ^1 ^ rotated ~ 30 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/6.3.particle_spear

# 攻撃
    execute if score @s 9G.AnimationTimer matches 50 at @s run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 81.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/2.end
