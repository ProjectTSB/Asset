#> asset:mob/0391.axia_first/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0391.axia_first/**
    scoreboard objectives add AV.AnimationTick dummy
        # Animationがどれくらいの時間経過したかを記録するスコア
    scoreboard objectives add AV.AnimationNum dummy
        # どのAnimationが実行されているかを記録するスコア
            # 10の位 : Animationの種類
            # 1の位  : Animation番号
    scoreboard objectives add AV.SkillSelect dummy
        # どのスキルが実行されているかを記録するスコア
    scoreboard objectives add AV.ProjectileTick dummy
        # 弾幕用Tick
    scoreboard objectives add AV.UUID dummy
        # UUIDやUserID保存用のスコア
    scoreboard objectives add AV.FalterCount dummy
        # 怯みカウント
