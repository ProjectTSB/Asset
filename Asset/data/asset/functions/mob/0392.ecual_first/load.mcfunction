#> asset:mob/0392.ecual_first/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0392.ecual_first/**
    # Animationがどれくらいの時間経過したかを記録するスコア
        scoreboard objectives add AW.AnimationTick dummy
    # どのAnimationが実行されているかを記録するスコア
        # 10の位 : Animationの種類
        # 1の位  : Animation番号
            scoreboard objectives add AW.AnimationNum dummy
    # 弾幕用Tick
        scoreboard objectives add AW.ProjectileTick dummy
    # UUIDやUserID保存用のスコア    
        scoreboard objectives add AW.UUID dummy
    # 怯みカウント    
        scoreboard objectives add AW.FalterCount dummy
        
