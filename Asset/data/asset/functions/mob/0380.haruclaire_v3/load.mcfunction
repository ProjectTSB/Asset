#> asset:mob/0380.haruclaire_v3/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0380.haruclaire_v3/**

# タイマー
    # 全般的な処理に使用するタイマー
        scoreboard objectives add AK.GlobalTimer dummy
    # アニメーションの制御に使用するタイマー
        scoreboard objectives add AK.AnimationTimer dummy
