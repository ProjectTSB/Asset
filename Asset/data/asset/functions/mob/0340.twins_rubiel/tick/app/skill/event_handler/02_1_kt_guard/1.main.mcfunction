#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/1.main
#
# アニメーションのイベントハンドラ Hgガード
# ハンドガン装備時のガードモーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：15tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# ガード受け付け
    execute if score @s 9G.AnimationTimer matches 1 run tag @s add 9G.State.IsGuard
    execute if score @s 9G.AnimationTimer matches 16 run tag @s remove 9G.State.IsGuard

# 終了
    execute if score @s 9G.AnimationTimer matches 16.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/2.end
