#> asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
#
# ノヴァ拡散
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/
#   asset:mob/0393.labyria_first/ai/animation/100_0_opening/

# スコア設定
    scoreboard players set $AX.Loop Temporary 0

# 拡散
    function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/loop

# リセット
    scoreboard players reset $AX.Loop Temporary
