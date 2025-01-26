#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/1.main
#
# アニメーションのイベントハンドラ Sc待機
# 鎌装備時の待機モーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：60tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/3.play_animation

# 演出
    execute if score @s 9G.AnimationTimer matches 15 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2

# ガード受け付け
    execute if score @s 9G.AnimationTimer matches 1 run tag @s add 9G.State.IsGuard
    execute if score @s 9G.AnimationTimer matches 61 run tag @s remove 9G.State.IsGuard

# 終了
    execute if score @s 9G.AnimationTimer matches 61.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/2.end
