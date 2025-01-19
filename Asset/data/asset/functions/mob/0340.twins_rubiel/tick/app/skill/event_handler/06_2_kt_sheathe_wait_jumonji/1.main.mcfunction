#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_2_kt_sheathe_wait_jumonji/1.main
#
# アニメーションのイベントハンドラ Kt納刀待機・十文字
# 納刀中の待機モーション・十文字斬り
# サフィエルの行動が終了した場合に攻撃に移る
# 納刀中にプレイヤーから攻撃を受けた場合、納刀をキャンセルして反撃する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：40tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_2_kt_sheathe_wait_jumonji/3.play_animation

# 無敵化
    effect give @s resistance 1 9 true

# 移動
    function asset:mob/0340.twins_rubiel/app/general/2.rotate

# 終了
    execute if score @s 9G.AnimationTimer matches 41.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_2_kt_sheathe_wait_jumonji/2.end
