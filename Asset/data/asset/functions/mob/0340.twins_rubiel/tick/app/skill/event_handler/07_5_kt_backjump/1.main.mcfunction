#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/1.main
#
# アニメーションのイベントハンドラ Ktナイフ投げ
# 後退しつつナイフを投げて攻撃する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：55tick)
    execute if score @s 9G.AnimationTimer matches 5 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..5 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 6..13 at @s positioned ^ ^0.4 ^-0.6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 14..20 at @s positioned ^ ^0.3 ^-0.5 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 21..27 at @s positioned ^ ^-0.2 ^-0.5 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 28..35 at @s positioned ^ ^-0.4 ^-0.4 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 36..40 at @s positioned ^ ^ ^-0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 5 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 9G.AnimationTimer matches 5 run particle block quartz_block ~ ~0.1 ~ 0.5 0 0.5 0 20
    execute if score @s 9G.AnimationTimer matches 35 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 0.8

# 攻撃
    # execute if score @s 9G.AnimationTimer matches 20 at @s positioned ^ ^1 ^2 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/5.damage

# 終了
    execute if score @s 9G.AnimationTimer matches 56.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/2.end
