#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/1.main
#
# アニメーションのイベントハンドラ Hgステップ・右左
# サフィから見て右→左の順に素早く移動する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：10tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/3.1.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..25 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..4 at @s positioned ^-0.6 ^0.1 ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 5..8 at @s positioned ^-0.6 ^-0.1 ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.5
    execute if score @s 9F.AnimationTimer matches 1 run particle firework ~ ~0.5 ~ 0.1 0.1 0.1 0.12 5

# アニメーション再生 (長さ：15tick)
    execute if score @s 9F.AnimationTimer matches 9 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/3.2.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 9..13 at @s positioned ^0.9 ^0.1 ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 14..18 at @s positioned ^0.45 ^-0.1 ^0.05 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 19..22 at @s positioned ^0.3 ^ ^0.05 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 9 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.5
    execute if score @s 9F.AnimationTimer matches 9 run particle firework ~ ~0.5 ~ 0.1 0.1 0.1 0.12 5

# 終了
    execute if score @s 9F.AnimationTimer matches 25.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/2.end
