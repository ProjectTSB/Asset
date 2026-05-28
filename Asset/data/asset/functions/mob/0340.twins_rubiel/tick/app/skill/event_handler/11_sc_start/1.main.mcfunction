#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/11_sc_start/1.main
#
# アニメーションのイベントハンドラ Sc召喚
# 鎌装備モーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：30tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/11_sc_start/3.play_animation

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9G.AnimationTimer matches 11 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2

# 状態更新
    execute if score @s 9G.AnimationTimer matches 1 run tag @s add 9G.State.Weapon.Sc

# 終了
    execute if score @s 9G.AnimationTimer matches 31.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/11_sc_start/2.end
