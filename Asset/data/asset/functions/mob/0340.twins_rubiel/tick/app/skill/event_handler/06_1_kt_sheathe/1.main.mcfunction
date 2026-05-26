#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/1.main
#
# アニメーションのイベントハンドラ Kt納刀
# ゆっくりと納刀する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：65tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/3.play_animation

# 移動
    function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 10..20 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 4 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 24 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 55 run particle flash ^0.4 ^1.2 ^-0.2 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 55 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 55 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 55 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 55 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.2

# 終了
    execute if score @s 9G.AnimationTimer matches 66.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/2.end
