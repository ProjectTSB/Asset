#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/1.main
#
# アニメーションのイベントハンドラ Hg回し蹴り
# 近づきつつ回し蹴りで攻撃する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：25tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..12 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..12 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..10 at @s positioned ^ ^ ^0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 4..12 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.7 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 13..16 at @s positioned ^ ^0.1 ^0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 17..23 at @s positioned ^ ^-0.05 ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 13 at @s rotated ~-120 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 13 at @s rotated ~-60 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 14 at @s rotated ~0 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 14 at @s rotated ~60 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 15 at @s rotated ~120 ~ positioned ^ ^0.9 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 13 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 13 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7

# 攻撃
    execute if score @s 9F.AnimationTimer matches 15 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/5.damage

# 終了
    execute if score @s 9F.AnimationTimer matches 26.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/2.end
