#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/01_kt_start/1.main
#
# アニメーションのイベントハンドラ Kt召喚
# 刀装備モーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：25tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/01_kt_start/3.play_animation

# 演出
    execute if score @s 9G.AnimationTimer matches 11 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2

# 終了
    execute if score @s 9G.AnimationTimer matches 26.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/01_kt_start/2.end
