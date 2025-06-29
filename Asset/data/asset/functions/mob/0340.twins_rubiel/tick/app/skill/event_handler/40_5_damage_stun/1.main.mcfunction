#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/1.main
#
# アニメーションのイベントハンドラ 怯み・スタン
# 気絶して目をまわす
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：30tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/3.play_animation

# 移動
    # execute if score @s 9G.AnimationTimer matches 1..31 at @s positioned ^ ^-0.1 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 5 run particle crit ^ ^1.6 ^-0.1 0.2 0 0.2 0.1 3
    execute if score @s 9G.AnimationTimer matches 15 run particle crit ^ ^1.6 ^-0.1 0.2 0 0.2 0.1 3
    execute if score @s 9G.AnimationTimer matches 25 run particle crit ^ ^1.6 ^-0.1 0.2 0 0.2 0.1 3

# 終了
    execute if score @s 9G.AnimationTimer matches 31.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/2.end
