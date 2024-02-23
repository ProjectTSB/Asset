#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_4_kt_sheathe_damage/1.main
#
# アニメーションのイベントハンドラ Kt居合斬り・怯み
# 居合斬りの怯みモーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：56tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_4_kt_sheathe_damage/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..5 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..10 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 1..10 at @s positioned ^ ^-0.1 ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 47..51 at @s positioned ^ ^0.1 ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 10 run playsound entity.hoglin.step hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 35 run playsound block.grass.step hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 47 run playsound block.grass.step hostile @a ~ ~ ~ 1 1.2

# 怯み受け付け
    execute if score @s 9G.AnimationTimer matches 1 run tag @s add 9G.State.IsDamage
    execute if score @s 9G.AnimationTimer matches 47 run tag @s remove 9G.State.IsDamage

# 終了
    execute if score @s 9G.AnimationTimer matches 57.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_4_kt_sheathe_damage/2.end
