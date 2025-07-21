#> asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon/with_calc_delay.m
#
# Delayを計算してから召喚する
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/5_oclock

#> Private
# @private
    #declare score_holder $1A.Delay

# 定数をスコアに定義
    $scoreboard players set $1A.Delay Temporary $(ThunderTick)

# (定数 - 1A.LifeTime)をstorageへ突っ込んで拡散して召喚
    execute store result storage asset:temp Args.Delay int 1 run scoreboard players operation $1A.Delay Temporary -= @s 1A.LifeTime
    function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon/m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args
    scoreboard players reset $1A.Delay Temporary
