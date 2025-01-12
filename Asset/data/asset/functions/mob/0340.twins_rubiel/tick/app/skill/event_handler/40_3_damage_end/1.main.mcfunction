#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/1.main
#
# アニメーションのイベントハンドラ 怯み・終了
# 立ち上がる
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：16tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/3.play_animation

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1

# 移動
    execute if score @s 9G.AnimationTimer matches 17 run function asset:mob/0340.twins_rubiel/app/general/6.teleport_to_land
    execute if score @s 9G.AnimationTimer matches 18 facing entity @p feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 18 at @s run tp @s ^ ^0.5 ^-6
    execute if score @s 9G.AnimationTimer matches 18 at @s positioned ^ ^ ^-6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
# 移動演出
    execute if score @s 9G.AnimationTimer matches 18 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 18 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 18 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9G.AnimationTimer matches 21 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 21 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 21 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# 終了
    execute if score @s 9G.AnimationTimer matches 21.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/2.end
