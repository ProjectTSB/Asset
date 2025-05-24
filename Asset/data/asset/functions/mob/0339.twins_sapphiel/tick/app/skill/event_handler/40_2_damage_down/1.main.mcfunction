#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_2_damage_down/1.main
#
# アニメーションのイベントハンドラ 怯み・ダウン
# うずくまる
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：30tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_2_damage_down/3.play_animation

# 移動
    # execute if score @s 9F.AnimationTimer matches 1..31 at @s positioned ^ ^-0.1 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 終了
    execute if score @s 9F.AnimationTimer matches 31.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_2_damage_down/2.end
