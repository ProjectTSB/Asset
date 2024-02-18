#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.2.throw_scythe
#
# アニメーションのイベントハンドラ Scワープ連撃 鎌投げ
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/1.main

# 演出
    playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.8
    particle electric_spark ~ ~ ~ 0 0 0 1 30

# 鎌(354)召喚
    data modify storage api: Argument.ID set value 354
    execute rotated ~ ~ run function api:mob/summon
