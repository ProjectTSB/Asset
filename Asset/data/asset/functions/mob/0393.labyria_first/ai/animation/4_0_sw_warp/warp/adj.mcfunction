#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/warp/adj
#
# ワープ処理と調整
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/
#   asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/

# ノーマル仕様 ワープ
    execute if predicate api:global_vars/difficulty/max/2_hard at @r[tag=!PlayerShouldInvulnerable,distance=..100] rotated ~ 0 positioned ^ ^ ^5 rotated ~180 0 run function asset:mob/0393.labyria_first/ai/general/1.teleport

# ハード仕様 ワープ
    execute if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/warp/

# Posの調整
    data modify entity @s Pos[1] set from entity @e[type=marker,tag=AX.Marker.SummonPoint,distance=..100,limit=1] Pos[1]

# 演出
    function asset:mob/0393.labyria_first/ai/general/3.teleport_effect/
