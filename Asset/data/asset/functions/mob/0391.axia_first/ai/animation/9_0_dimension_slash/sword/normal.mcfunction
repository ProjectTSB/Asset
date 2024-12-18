#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
#
# ディメンションソード 周囲に召喚
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/
#   asset:mob/0391.axia_first/ai/animation/100_0_opening/

# スコア設定
    scoreboard players set $AV.Loop Temporary 0

# 拡散
    function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal_loop

# リセット
    scoreboard players reset $AV.Loop Temporary
