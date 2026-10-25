#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_1_sync_crossfire/1.main
#
# アニメーションのイベントハンドラ Sync交差攻撃
# 敵の左右に回り込みながら、ただ傍観する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：85tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_1_sync_crossfire/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..20 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..20 at @s run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 61..80 at @s run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..4 at @s positioned ^-0.1 ^ ^-0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 5..10 at @s positioned ^-0.05 ^ ^-0.05 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

    execute if score @s 9G.AnimationTimer matches 21..50 at @s positioned ^0.52 ^ ^0.05 rotated ~3 ~ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 21..30 at @s positioned ^ ^0.05 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 51..60 at @s positioned ^0.3 ^-0.05 ^ rotated ~3 ~ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 61..70 at @s positioned ^0.2 ^ ^-0.05 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 20 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 60 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 60 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1.4

# 終了
    execute if score @s 9G.AnimationTimer matches 76.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_1_sync_crossfire/2.end
