#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/1.main
#
# アニメーションのイベントハンドラ Hg2連回し蹴り
# 近づきつつ回し蹴りで2回攻撃し、ダメ押しに2回射撃する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：125tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..8 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..8 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..10 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s positioned ^ ^ ^0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 4..8 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s positioned ^ ^ ^0.7 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 13..18 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^0.1 ^0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 19..22 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^ ^0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 23..28 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] positioned ^ ^ ^0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 29..45 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 29..42 at @s positioned ^ ^-0.05 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 29..42 at @s positioned ^ ^ ^-0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 96..115 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 96..100 at @s positioned ^ ^0.05 ^-0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 101..110 at @s positioned ^ ^0.05 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 111..115 at @s positioned ^ ^-0.05 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 116.. at @s positioned ^ ^ ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1..8 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 9F.AnimationTimer matches 17 at @s rotated ~-130 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 17 at @s rotated ~-70 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 18 at @s rotated ~-10 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 18 at @s rotated ~50 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 19 at @s rotated ~110 ~ positioned ^ ^0.9 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 27 at @s rotated ~-120 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 27 at @s rotated ~-60 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 28 at @s rotated ~0 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 28 at @s rotated ~60 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 29 at @s rotated ~120 ~ positioned ^ ^0.9 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 17 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 17 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 27 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 27 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 29..34 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 9F.AnimationTimer matches 101 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2

# 攻撃
    execute if score @s 9F.AnimationTimer matches 19 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/5.damage
    execute if score @s 9F.AnimationTimer matches 29 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/5.damage
    execute if score @s 9F.AnimationTimer matches 46 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 50 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 51 positioned ^ ^1.2 ^0.6 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot
    execute if score @s 9F.AnimationTimer matches 55 positioned ^ ^1.2 ^0.6 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot

# 終了
    execute if score @s 9F.AnimationTimer matches 126.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/2.end
