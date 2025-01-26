#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_2_lc_shot_aim/1.main
#
# アニメーションのイベントハンドラ Lc射撃・エイム
# ランチャーを構え、敵を狙う
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：50tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_2_lc_shot_aim/3.play_animation

# 移動
    function asset:mob/0339.twins_sapphiel/app/general/2.rotate

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1

# 終了
    execute if score @s 9F.AnimationTimer matches 51.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_2_lc_shot_aim/2.end
