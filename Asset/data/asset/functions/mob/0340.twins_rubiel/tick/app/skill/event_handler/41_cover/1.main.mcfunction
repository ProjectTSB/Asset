#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/1.main
#
# アニメーションのイベントハンドラ 怯みかばい攻撃
# 相方をかばいつつ攻撃する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：135tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/3.play_animation


# 移動演出
    execute if score @s 9G.AnimationTimer matches 136 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 136 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 136 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9G.AnimationTimer matches 138 at @s positioned ^ ^ ^-6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 138 at @s positioned ^ ^0.5 ^-4 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 終了
    execute if score @s 9G.AnimationTimer matches 140.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/2.end
