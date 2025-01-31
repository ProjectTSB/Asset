#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/1.main
#
# アニメーションのイベントハンドラ Kt掴み
# 刀をしまい、両手で敵を掴む
# 掴みに失敗した場合は体制を崩し、ダメージを受けると怯む
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

## 開始
# アニメーション再生 (長さ：54tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/3.1.play_start_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..54 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..54 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
    execute if score @s 9G.AnimationTimer matches 5..25 at @s positioned ^ ^ ^-0.05 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 45..54 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s positioned ^ ^ ^1.4 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 45 run playsound block.grass.step hostile @a ~ ~ ~ 5 1.2

# 掴み
    execute if score @s 9G.AnimationTimer matches 45..54 if entity @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/4.catch

## 失敗
# アニメーション再生 (長さ：47tick)
    execute if score @s 9G.AnimationTimer matches 55 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/3.2.play_miss_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 55..64 at @s positioned ^ ^ ^0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 65..74 at @s positioned ^ ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 85..94 at @s positioned ^ ^0.13 ^-0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 95..102 at @s positioned ^ ^-0.1 ^-0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 55 run playsound block.grass.step hostile @a ~ ~ ~ 5 1.2
    execute if score @s 9G.AnimationTimer matches 62 run playsound block.grass.step hostile @a ~ ~ ~ 5 1.2
    execute if score @s 9G.AnimationTimer matches 69 run playsound block.grass.step hostile @a ~ ~ ~ 5 1.2
    execute if score @s 9G.AnimationTimer matches 55 run particle block quartz_block ~ ~0.1 ~ 0.5 0 0.5 0 10
    execute if score @s 9G.AnimationTimer matches 62 run particle block quartz_block ~ ~0.1 ~ 0.5 0 0.5 0 10
    execute if score @s 9G.AnimationTimer matches 69 run particle block quartz_block ~ ~0.1 ~ 0.5 0 0.5 0 10
    execute if score @s 9G.AnimationTimer matches 85 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2

# 怯み受け付け
    execute if score @s 9G.AnimationTimer matches 60 run tag @s add 9G.State.IsDamage
    execute if score @s 9G.AnimationTimer matches 100 run tag @s remove 9G.State.IsDamage

# 終了
    execute if score @s 9G.AnimationTimer matches 103.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/2.end
