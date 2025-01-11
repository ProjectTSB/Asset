#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/1.main
#
# アニメーションのイベントハンドラ 怯みかばい攻撃
# 相方をかばいつつ攻撃する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：135tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/3.play_animation

# 飛び込み斬り
# 移動
    execute if score @s 9G.AnimationTimer matches 1 facing entity @e[tag=9G.Temp.Target.Aec.1,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 20..32 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 33..37 positioned ^ ^0.2 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 38..42 positioned ^ ^0.1 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9G.AnimationTimer matches 25 positioned as @e[tag=9G.Temp.Target.Aec.1,sort=nearest,limit=1] positioned as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^ ^4 ^-3 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 26 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/4.calc_vector_0
        execute if score @s 9G.AnimationTimer matches 41 positioned as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-2 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 42 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/4.calc_vector_1
        execute if score @s 9G.AnimationTimer matches 26..39 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
        execute if score @s 9G.AnimationTimer matches 46..50 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
# 演出
    execute if score @s 9G.AnimationTimer matches 26 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 48 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 48 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 49 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 49 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 50 run playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9G.AnimationTimer matches 50 at @s run particle block quartz_block ~ ~0.1 ~ 0.5 0 0.5 0 30
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 48 at @s positioned ^ ^2.0 ^1 rotated ~0 -30 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 49..52 at @s positioned ^ ^1.0 ^2 rotated ~0 -10 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.1.particle_slash
# 攻撃
    execute if score @s 9G.AnimationTimer matches 49..52 at @s positioned ^ ^1 ^2 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/5.1.damage_jump

# 二刀流水平斬り
# 移動
    execute if score @s 9G.AnimationTimer matches 54..63 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 58..63 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 71..80 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.4 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 81..85 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
# 演出
    execute if score @s 9G.AnimationTimer matches 58 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 71 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 71 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 72 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 79 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 79 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 72 at @s rotated ~-30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.3.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 73 at @s rotated ~30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.3.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 80 at @s rotated ~-30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.2.particle_slash_red
    execute if score @s 9G.AnimationTimer matches 81 at @s rotated ~30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.2.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 73 at @s positioned ^ ^1 ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/5.2.damage_horizon
    execute if score @s 9G.AnimationTimer matches 81 at @s positioned ^ ^1 ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/5.2.damage_horizon

# 交差斬り
# 移動
    execute if score @s 9G.AnimationTimer matches 84..93 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 85..90 at @s positioned ^ ^0.15 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 94..105 at @s positioned ^ ^-0.15 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 84..90 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.4 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 91..99 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
# 演出
    execute if score @s 9G.AnimationTimer matches 84 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 100 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 100 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 100 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 102 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 101 at @s positioned ^ ^1 ^1.4 rotated ~90 ~40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.3.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 101 at @s positioned ^ ^1 ^1.4 rotated ~90 ~-40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/6.2.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 101 at @s positioned ^ ^1 ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/5.3.damage_cross

# 移動演出
    execute if score @s 9G.AnimationTimer matches 136 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 136 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 136 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9G.AnimationTimer matches 138 at @s positioned ^ ^1 ^-6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 138 at @s positioned ^ ^ ^-4 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 怯み受け付け
    execute if score @s 9G.AnimationTimer matches 105 run tag @s add 9G.State.IsDamage
    execute if score @s 9G.AnimationTimer matches 136 run tag @s remove 9G.State.IsDamage

# 終了
    execute if score @s 9G.AnimationTimer matches 140.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/2.end
