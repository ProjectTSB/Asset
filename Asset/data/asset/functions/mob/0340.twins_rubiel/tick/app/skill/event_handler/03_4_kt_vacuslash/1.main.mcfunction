#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/1.main
#
# アニメーションのイベントハンドラ Kt真空斬り
# 一度納刀して力を溜め、空間ごと敵を斬る
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：94tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..36 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..20 positioned ~ ~-0.1 ~ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 85..95 positioned ~ ~0.05 ~ run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound item.axe.wax_off hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 1 run playsound item.axe.wax_off hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 5..20 positioned ~ ~1 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.5.particle_charge
    execute if score @s 9G.AnimationTimer matches 15..30 positioned ~ ~1 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.6.particle_charge_fast
    execute if score @s 9G.AnimationTimer matches 13 run particle flash ^-0.8 ^1.2 ^0.2 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 13 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 13 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 13 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 13 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9G.AnimationTimer matches 13 run playsound entity.warden.sonic_charge hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 37 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 37 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 44 run playsound item.trident.throw hostile @a ~ ~ ~ 2 0.8
    execute if score @s 9G.AnimationTimer matches 44 run playsound item.trident.throw hostile @a ~ ~ ~ 2 0.6
    execute if score @s 9G.AnimationTimer matches 45 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.8
    execute if score @s 9G.AnimationTimer matches 45 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.65
    execute if score @s 9G.AnimationTimer matches 45 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.5
    execute if score @s 9G.AnimationTimer matches 45 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s 9G.AnimationTimer matches 45 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9G.AnimationTimer matches 45 run playsound ogg:item.trident.return2 hostile @a ~ ~ ~ 2 0.5
    execute if score @s 9G.AnimationTimer matches 45 run playsound ogg:item.trident.return2 hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9G.AnimationTimer matches 37 run particle flash ^ ^1.4 ^ 0 0 0 0 1

# 斬撃演出
    # execute if score @s 9G.AnimationTimer matches 44 at @s positioned ^ ^1 ^0.5 rotated ~180 0 positioned ^ ^ ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.1.particle_slash_0
    execute if score @s 9G.AnimationTimer matches 44 at @s positioned ^ ^1 ^0.5 rotated ~180 -30 positioned ^ ^ ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.1.particle_slash_0
    execute if score @s 9G.AnimationTimer matches 45 at @s positioned ^ ^1 ^0.5 rotated ~-5 0 positioned ^0.5 ^3 ^-2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.2.particle_slash_1
    execute if score @s 9G.AnimationTimer matches 45 at @s positioned ^ ^1 ^0.5 rotated ~-5 0 positioned ^ ^3 ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.2.particle_slash_1
    execute if score @s 9G.AnimationTimer matches 45 at @s positioned ^ ^1 ^0.5 rotated ~-5 -60 positioned ^ ^ ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.1.particle_slash_0
    execute if score @s 9G.AnimationTimer matches 46 at @s positioned ^ ^1 ^0.5 rotated ~5 -30 positioned ^ ^ ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.1.particle_slash_0
    execute if score @s 9G.AnimationTimer matches 46 at @s positioned ^ ^1 ^0.5 rotated ~5 0 positioned ^ ^ ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.1.particle_slash_0
    execute if score @s 9G.AnimationTimer matches 46 positioned ~ ~1 ~ rotated ~60 60 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.4.particle_circle
    execute if score @s 9G.AnimationTimer matches 46 positioned ~ ~1 ~ rotated ~-80 80 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.4.particle_circle

# 衝撃波演出
    execute if score @s 9G.AnimationTimer matches 60 run playsound entity.wither.break_block hostile @a ~ ~ ~ 3 0.5
    execute if score @s 9G.AnimationTimer matches 60 run playsound entity.wither.shoot hostile @a ~ ~ ~ 3 0.5
    execute if score @s 9G.AnimationTimer matches 60 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
    execute if score @s 9G.AnimationTimer matches 60 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.5
    execute if score @s 9G.AnimationTimer matches 60 at @s positioned ^ ^0.1 ^4 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 60 at @s positioned ^ ^0.1 ^7 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 61 at @s positioned ^ ^0.1 ^10 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 61 at @s positioned ^ ^0.1 ^13 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 62 at @s positioned ^ ^0.1 ^16 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 62 at @s positioned ^ ^0.1 ^19 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 63 at @s positioned ^ ^0.1 ^22 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 63 at @s positioned ^ ^0.1 ^25 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 64 at @s positioned ^ ^0.1 ^28 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 64 at @s positioned ^ ^0.1 ^31 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 65 at @s positioned ^ ^0.1 ^34 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 65 at @s positioned ^ ^0.1 ^37 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 66 at @s positioned ^ ^0.1 ^40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 66 at @s positioned ^ ^0.1 ^43 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 67 at @s positioned ^ ^0.1 ^46 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
    execute if score @s 9G.AnimationTimer matches 67 at @s positioned ^ ^0.1 ^49 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact

# 攻撃
    execute if score @s 9G.AnimationTimer matches 45 at @s run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/5.1.damage_slash

# 終了
    execute if score @s 9G.AnimationTimer matches 95.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/2.end
