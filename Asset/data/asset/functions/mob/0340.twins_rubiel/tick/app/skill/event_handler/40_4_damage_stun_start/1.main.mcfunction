#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_4_damage_stun_start/1.main
#
# アニメーションのイベントハンドラ 怯み・スタン開始
# 気絶する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：16tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_4_damage_stun_start/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..17 at @s positioned ^ ^-0.1 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 終了
    execute if score @s 9G.AnimationTimer matches 17.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_4_damage_stun_start/2.end
