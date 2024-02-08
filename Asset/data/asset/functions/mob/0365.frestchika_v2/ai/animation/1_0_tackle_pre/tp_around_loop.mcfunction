#> asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/tp_around_loop
#
# 埋まり回避のループ処理
#
# @within function
#   asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/tp_around
#   asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/tp_around_loop

# 少し前に進んで判定
    tp 0-0-0-0-0 ^ ^ ^0.25 ~ ~
    execute at 0-0-0-0-0 unless block ^ ^ ^ #lib:no_collision unless entity @s[distance=..0.25] run function asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/tp_around_loop