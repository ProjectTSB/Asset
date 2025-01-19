#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/1.main
#
# アニメーションのイベントハンドラ Hgライダーキック
# 懐に飛び込みながら蹴りで攻撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：44tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..20 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..10 at @s positioned ^ ^0.25 ^-0.5 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 1..10 if entity @a[tag=!PlayerShouldInvulnerable,distance=..18] at @s positioned ^ ^0.1 ^-0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 30..38 at @s positioned ^ ^ ^0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 39..45 at @s positioned ^ ^ ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9F.AnimationTimer matches 19 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-1 {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
        execute if score @s 9F.AnimationTimer matches 20 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/4.calc_vector
        execute if score @s 9F.AnimationTimer matches 21..29 run function asset:mob/0339.twins_sapphiel/app/general/4.teleport_using_vector

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 20 run particle explosion ~ ~ ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 20 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet positioned ^ ^1 ^-0.5 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/6.1.particle_circle
    execute if score @s 9F.AnimationTimer matches 20 run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 2
    execute if score @s 9F.AnimationTimer matches 21..29 run particle firework ~ ~0.5 ~ 0.2 0.2 0.2 0.1 3
    execute if score @s 9F.AnimationTimer matches 21..29 run particle dust 1000000000 1000000000 100000000 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 10
    execute if score @s 9F.AnimationTimer matches 30 run playsound entity.hoglin.step hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 30 run particle explosion ~ ~ ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 30 run particle campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.03 10
    execute if score @s 9F.AnimationTimer matches 30..35 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 9F.AnimationTimer matches 30..35 at @s run particle block sea_lantern ~ ~0.1 ~ 0.2 0 0.2 1 3
    execute if score @s 9F.AnimationTimer matches 36 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 30 rotated ~ -90 positioned ~ ~0.5 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/6.2.particle_circle_single

# 攻撃
    execute if score @s 9F.AnimationTimer matches 21..29 if score @s 9F.DamageCooldown matches ..0 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/5.damage

# 終了
    execute if score @s 9F.AnimationTimer matches 45.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/2.end
