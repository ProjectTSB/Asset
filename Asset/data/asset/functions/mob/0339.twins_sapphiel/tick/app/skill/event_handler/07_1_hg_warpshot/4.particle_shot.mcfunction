#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_shot
#
# アニメーションのイベントハンドラ Hgワープポイント射撃 ダミー射撃演出
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/1.main

# 演出
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.5
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.7
    particle block gold_block ^ ^ ^-0.8 0 0 0 1 1
    particle electric_spark ~ ~ ~ 0 0 0 0.2 5
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^ 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.2 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.4 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.6 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.8 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^1.0 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^1.2 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^1.4 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^1.6 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^1.8 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^2.0 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^2.2 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^2.4 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^2.6 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^2.8 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^3.0 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^3.2 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^3.4 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^3.6 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^3.8 0 0 0 0 1
    particle end_rod ^ ^ ^3.8 0 0 0 0.1 3
