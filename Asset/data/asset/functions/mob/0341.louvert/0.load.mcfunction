#> asset:mob/0341.louvert/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0341.louvert/**
    scoreboard objectives add 9H.AnimationTick dummy
        # Animationがどれくらいの時間経過したかを記録するスコア
    scoreboard objectives add 9H.AnimationNum dummy
        # どのAnimationが実行されているかを記録するスコア
            # 10の位 : Animationの種類
            # 1の位  : Animation番号
    scoreboard objectives add 9H.SkillSelect dummy
        # どのスキルが実行されているかを記録するスコア