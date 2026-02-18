#> asset:mob/0410.heiloang/tick/util/check_target
#
# 汎用処理 ターゲット更新
#
# @within asset:mob/0410.heiloang/tick/event/**

# ターゲットがいる場合、スキップ
    execute if entity @a[tag=BE.MainTarget,tag=!PlayerShouldInvulnerable,distance=..80] run return 0

# ターゲット更新
    tag @a[tag=BE.MainTarget,limit=1] remove BE.MainTarget
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=1] run tag @s add BE.MainTarget
