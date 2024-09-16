#> asset:effect/0218.heavy_weight/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0218.heavy_weight/_/tick

#> private
# @private
    #declare score_holder $62.Negative

# 低速落下を解除
    effect clear @s slow_falling
# マイナス跳躍
    execute store result score $62.Negative Temporary run data get storage asset:context Stack
    scoreboard players add $62.Negative Temporary 1
    scoreboard players operation $62.Negative Temporary *= $-1 Const
    scoreboard players operation $62.Negative Temporary /= $3 Const
    execute store result storage asset:temp 62.JumpStack int 1 run scoreboard players add $62.Negative Temporary 255
    function asset:effect/0218.heavy_weight/tick/.m with storage asset:temp 62
    scoreboard players reset $62.Negative Temporary
    data remove storage asset:temp 62
