#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/1.main
#
# アニメーションのイベントハンドラ Lc射撃・射撃
# ランチャーを発射する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：26tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/3.play_animation

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1

# 射撃
    execute if score @s 9F.AnimationTimer matches 2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/5.1.shot

# 移動
    execute if score @s 9F.AnimationTimer matches 27 run function asset:mob/0339.twins_sapphiel/app/general/6.teleport_to_land
    execute if score @s 9F.AnimationTimer matches 28 run tp @s ^ ^0.5 ^
# 移動演出
    execute if score @s 9F.AnimationTimer matches 30 run playsound item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 30 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 30 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# 終了
    execute if score @s 9F.AnimationTimer matches 30.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/2.end
