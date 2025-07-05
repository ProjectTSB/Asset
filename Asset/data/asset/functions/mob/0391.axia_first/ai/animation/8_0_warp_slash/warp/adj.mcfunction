#> asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/adj
#
# ワープ処理と調整
#
# @within function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/

# ノーマル仕様 ワープ
    execute if predicate api:global_vars/difficulty/max/2_hard at @r[tag=!PlayerShouldInvulnerable,distance=..100] rotated ~ 0 positioned ^ ^ ^4 rotated ~180 0 run function asset:mob/0391.axia_first/ai/general/1.teleport

# ハード仕様 ワープ
    execute if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/

# Rotationの調整
    data modify entity @s Pos[1] set from entity @e[type=marker,tag=AV.Marker.SummonPoint,distance=..100,limit=1] Pos[1]

# 演出
    function asset:mob/0391.axia_first/ai/general/3.teleport_effect/
