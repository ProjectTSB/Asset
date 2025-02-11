#> asset:mob/0411.behemoth/tick/util/check_target
#
# 汎用処理 ターゲット更新
#
# @within asset:mob/0411.behemoth/tick/**

# ターゲットがいる場合、スキップ
    execute if entity @a[tag=BF.MainTarget,distance=..80] run return 0

# ターゲット更新
    tag @a remove BF.MainTarget
    execute as @a[distance=..80,sort=random,limit=1] run tag @s add BF.MainTarget
