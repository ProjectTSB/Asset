#> asset:mob/1004.tultaria/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/1004.tultaria/**/**
    scoreboard objectives add RW.MoveTimesPerTick dummy
    scoreboard objectives add RW.Speed dummy
    scoreboard objectives add RW.LoopCount dummy
    scoreboard objectives add RW.FakeInertia dummy
    scoreboard objectives add RW.Phase dummy
    scoreboard objectives add RW.LineAttack dummy
