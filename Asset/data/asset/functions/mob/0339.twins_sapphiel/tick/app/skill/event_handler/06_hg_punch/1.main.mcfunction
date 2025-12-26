#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/1.main
#
# アニメーションのイベントハンドラ Hg正拳突き
# 構えたのち、急接近してパンチする
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：76tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..46 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..8 at @s positioned ^ ^ ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 66..76 at @s positioned ^ ^ ^-0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9F.AnimationTimer matches 40 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-1 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9F.Temp.Target.Aec.0"]}
        execute if score @s 9F.AnimationTimer matches 40 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/4.calc_vector_0
        execute if score @s 9F.AnimationTimer matches 47 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-1 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9F.Temp.Target.Aec.0"]}
        execute if score @s 9F.AnimationTimer matches 47 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/4.calc_vector_1
        execute if score @s 9F.AnimationTimer matches 41..49 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function asset:mob/0339.twins_sapphiel/app/general/4.teleport_using_vector

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound block.grass.step hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9F.AnimationTimer matches 40 run playsound block.grass.step hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9F.AnimationTimer matches 40 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 1.4
    execute if score @s 9F.AnimationTimer matches 40 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/6.1.particle_circle
    execute if score @s 9F.AnimationTimer matches 40..49 run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.05 1

# 攻撃
    execute if score @s 9F.AnimationTimer matches 50 at @s positioned ^ ^1 ^1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/5.damage

# 終了
    execute if score @s 9F.AnimationTimer matches 65 if entity @a[tag=!PlayerShouldInvulnerable,distance=..7] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/4.change_to_lowkick
    execute if score @s 9F.AnimationTimer matches 70.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/2.end
