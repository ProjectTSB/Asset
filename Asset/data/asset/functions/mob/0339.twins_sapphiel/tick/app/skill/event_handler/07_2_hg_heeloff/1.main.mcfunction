#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/1.main
#
# アニメーションのイベントハンドラ Hgかかと落とし
# ワープポイントに移動し、敵にかかと落としで攻撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：40tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 6 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp,sort=nearest,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~-0.5 ~ ~ 0
    execute if score @s 9F.AnimationTimer matches 6..20 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 15..23 at @s positioned ^ ^0.1 ^0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9F.AnimationTimer matches 15 positioned as @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^4 ^-6 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9F.Temp.Target.Aec.0"]}
        execute if score @s 9F.AnimationTimer matches 15 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/4.1.calc_vector_0
        execute if score @s 9F.AnimationTimer matches 23 positioned as @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-1 {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
        execute if score @s 9F.AnimationTimer matches 28 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/4.2.calc_vector_1
        execute if score @s 9F.AnimationTimer matches 15..22 run function asset:mob/0339.twins_sapphiel/app/general/4.teleport_using_vector
        execute if score @s 9F.AnimationTimer matches 28..33 run function asset:mob/0339.twins_sapphiel/app/general/4.teleport_using_vector

# 演出
    execute if score @s 9F.AnimationTimer matches 6 run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 2
    execute if score @s 9F.AnimationTimer matches 15 run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 1.8
    execute if score @s 9F.AnimationTimer matches 6 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9F.AnimationTimer matches 15 run particle firework ~ ~3 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9F.AnimationTimer matches 6 run particle flash ~ ~1 ~ 0.2 0.2 0.2 0.1 4
    execute if score @s 9F.AnimationTimer matches 15 run particle flash ~ ~3 ~ 0.2 0.2 0.2 0.1 4
    execute if score @s 9F.AnimationTimer matches 28 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.8
    execute if score @s 9F.AnimationTimer matches 28 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.9
    execute if score @s 9F.AnimationTimer matches 28 at @s rotated ~ -70 positioned ^ ^0.9 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 29 at @s rotated ~ -60 positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 30 at @s rotated ~ -20 positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 31 at @s rotated ~ 0 positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/6.1.particle_kick

# 攻撃
    execute if score @s 9F.AnimationTimer matches 33 positioned ^ ^ ^1.5 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/5.damage

# 終了
    execute if score @s 9F.AnimationTimer matches 42.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/2.end
