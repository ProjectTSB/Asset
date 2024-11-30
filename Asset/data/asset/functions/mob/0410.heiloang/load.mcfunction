#> asset:mob/0410.heiloang/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0410.heiloang/**
    # エラー対策
        scoreboard objectives add aj.heiloang_aj.animation.1_idle.local_anim_time dummy

    # 処理用
        scoreboard objectives add BE.Counter dummy
        scoreboard objectives add BE.EventTimer dummy
