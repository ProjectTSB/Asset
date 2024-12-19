#> asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
#
# 水魔法拡散
#
# @within function
#   asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/

# スコア設定
    scoreboard players set $AW.Loop Temporary 0

# 拡散
    function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/loop

# リセット
    scoreboard players reset $AW.Loop Temporary
