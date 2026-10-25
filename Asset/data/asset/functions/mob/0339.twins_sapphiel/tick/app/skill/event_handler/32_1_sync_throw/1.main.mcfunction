#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/32_1_sync_throw/1.main
#
# アニメーションのイベントハンドラ Syncぶん投げ
# ルビィをぶん投げる
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：85tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/32_1_sync_throw/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 21 at @s rotated ~90 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 21..34 at @s rotated ~-25 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 35..44 at @s rotated ~-40 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 45..55 at @s rotated ~-65 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 56..62 at @s rotated ~-12 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 2 run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 25 run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.9
    execute if score @s 9F.AnimationTimer matches 36 run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.0
    execute if score @s 9F.AnimationTimer matches 42 run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9F.AnimationTimer matches 48 run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9F.AnimationTimer matches 51 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.8
    execute if score @s 9F.AnimationTimer matches 25..50 run particle cloud ^ ^1.2 ^1.5 0.2 0.2 0.2 0.1 1
    execute if score @s 9F.AnimationTimer matches 51 run particle cloud ^ ^1.2 ^1.5 0 0 0 0.5 10

# 終了
    execute if score @s 9F.AnimationTimer matches 86.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/32_1_sync_throw/2.end
