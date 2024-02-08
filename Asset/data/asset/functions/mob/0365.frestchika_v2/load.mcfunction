#> asset:mob/0365.frestchika_v2/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0365.frestchika_v2/**
    scoreboard objectives add A5.AnimationTick dummy
        # Animationがどれくらいの時間経過したかを記録するスコア
    scoreboard objectives add A5.AnimationNum dummy
        # どのAnimationが実行されているかを記録するスコア
            # 10の位 : Animationの種類
            # 1の位  : Animation番号
    scoreboard objectives add A5.SkillSelect dummy
        # どのスキルが実行されているかを記録するスコア
    scoreboard objectives add A5.ProjectileTick dummy
        # 弾幕用Tick
    scoreboard objectives add A5.HPPer dummy
        # HPの割合を取得するためのもの
    scoreboard objectives add A5.OverHeat dummy
        # オーバーヒートカウント