#> asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/1.main
#
# スキルのイベントハンドラ 前半戦・待機
#
# @within function asset:mob/0380.haruclaire_v3/tick/app/events/

# アニメーション再生
    execute if score @s AK.AnimationTimer matches 1 run function asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/3.play_animation

# 終了
    execute if score @s AK.AnimationTimer matches 49.. run function asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/2.end
