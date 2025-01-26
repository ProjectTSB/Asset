#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/1.main
#
# アニメーションのイベントハンドラ Hgステップ・後
# 後ろに素早く下がる
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：27tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..28 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 3..12 at @s positioned ^ ^ ^-0.8 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 13..18 at @s positioned ^ ^ ^-0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 19..25 at @s positioned ^ ^ ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 3..9 at @s positioned ^ ^0.2 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 12..18 at @s positioned ^ ^-0.2 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.5
    execute if score @s 9F.AnimationTimer matches 1 run particle firework ~ ~0.5 ~ 0.1 0.1 0.1 0.12 5

# 終了
    execute if score @s 9F.AnimationTimer matches 28.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/2.end
