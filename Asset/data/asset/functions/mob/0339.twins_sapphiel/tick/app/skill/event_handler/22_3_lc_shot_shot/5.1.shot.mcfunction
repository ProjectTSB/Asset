#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/5.1.shot
#
# アニメーションのイベントハンドラ Lc射撃・射撃 ランチャー発射
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/1.main

# 演出
    playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.5
    playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.8
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.5
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1

# ミサイル(355)召喚
    data modify storage api: Argument.ID set value 355
    execute rotated ~ ~ run function api:mob/summon
