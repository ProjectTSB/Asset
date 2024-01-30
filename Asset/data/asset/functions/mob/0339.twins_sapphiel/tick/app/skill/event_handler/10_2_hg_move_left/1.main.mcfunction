#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/1.main
#
# アニメーションのイベントハンドラ Hgステップ・左
# サフィから見て左に素早く移動する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：20tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..20 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..10 at @s positioned ^0.6 ^ ^0.05 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 11..17 at @s positioned ^0.3 ^ ^0.05 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.5
    execute if score @s 9F.AnimationTimer matches 1 run particle firework ~ ~0.5 ~ 0.1 0.1 0.1 0.12 5

# 終了
    execute if score @s 9F.AnimationTimer matches 21.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/2.end
