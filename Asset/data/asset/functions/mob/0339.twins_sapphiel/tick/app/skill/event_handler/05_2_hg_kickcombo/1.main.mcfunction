#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/1.main
#
# アニメーションのイベントハンドラ Hg3段蹴り
# 素早く3回蹴る
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：100tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..12 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..12 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..12 at @s positioned ^ ^-0.1 ^0.02 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 12..21 at @s positioned ^ ^ ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 12..21 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s positioned ^ ^ ^0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 30..37 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 44..50 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 38..60 at @s positioned ^ ^ ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 38..45 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s positioned ^ ^ ^0.5 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 61..74 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 61..68 at @s positioned ^ ^ ^-0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 69..75 at @s positioned ^ ^ ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 84..95 at @s positioned ^ ^0.02 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 20 at @s rotated ~-120 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 20 at @s rotated ~-60 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 21 at @s rotated ~0 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 21 at @s rotated ~60 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 22 at @s rotated ~120 ~ positioned ^ ^0.9 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 20 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 20 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 41 at @s rotated ~150 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 42 at @s rotated ~90 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 43 at @s rotated ~30 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 41 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 41 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 50 at @s rotated ~120 ~ positioned ^ ^1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 50 at @s rotated ~60 ~ positioned ^ ^1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 51 at @s rotated ~0 ~ positioned ^ ^1.1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 51 at @s rotated ~-60 ~ positioned ^ ^1.1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 52 at @s rotated ~-120 ~ positioned ^ ^1.2 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 50 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 50 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 61 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 84 run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 0.7

# 攻撃
    execute if score @s 9F.AnimationTimer matches 21 at @s positioned ^ ^1 ^1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/5.damage
    execute if score @s 9F.AnimationTimer matches 41 at @s positioned ^ ^1 ^1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/5.damage
    execute if score @s 9F.AnimationTimer matches 51 at @s positioned ^ ^1 ^1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/5.damage

# 終了
    execute if score @s 9F.AnimationTimer matches 101.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/2.end
