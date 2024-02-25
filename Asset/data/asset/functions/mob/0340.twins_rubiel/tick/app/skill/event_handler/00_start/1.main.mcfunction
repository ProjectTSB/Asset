#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/00_start/1.main
#
# アニメーションのイベントハンドラ 登場
# 登場演出
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：95tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/00_start/3.play_animation

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 25 run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 0.8

# 状態更新
    execute if score @s 9G.AnimationTimer matches 1 run tag @s add 9G.State.Weapon.Kt

# 終了
    execute if score @s 9G.AnimationTimer matches 96.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/00_start/2.end
