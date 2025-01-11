#> asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/
#
# ワープ処理を行う
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/
#   asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/
#   asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/

# スコアを設定
    scoreboard players set $AX.Loop Temporary 0

# ループ処理を行う
    function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/loop

# ワープ後の演出
    function asset:mob/0393.labyria_first/ai/general/3.teleport_effect/

# スコアリセット
    scoreboard players reset $AX.Loop Temporary
