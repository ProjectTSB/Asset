#> asset:mob/0391.axia_first/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0391.axia_first/**
    scoreboard objectives add AV.AnimationTick dummy
    scoreboard objectives add AV.AnimationNum dummy
    scoreboard objectives add AV.ProjectileTick dummy
    scoreboard objectives add AV.UUID dummy
    scoreboard objectives add AV.FalterCount dummy

# AnimationTick
    # Animationがどれくらいの時間経過したかを記録するスコア

# AnimationNum
    # どのAnimationが実行されているかを記録するスコア
        # 10の位 : Animationの種類
        # 1の位  : Animation番号

# ProjectileTick
    # 弾幕用Tick

# UUID
    # UUIDやUserID保存用のスコア 

# FalterCount
    # 怯みカウント 
