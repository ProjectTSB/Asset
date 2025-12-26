#> asset:mob/0412.tiamat/tick/util/check_target
#
# 汎用処理 ターゲット更新
#
# @within asset:mob/0412.tiamat/tick/**

# ターゲットがいる場合、スキップ
    execute if entity @a[tag=BG.MainTarget,tag=!PlayerShouldInvulnerable,distance=..80] run return 0

# ターゲット更新
    tag @a[tag=BG.MainTarget] remove BG.MainTarget
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=1] run tag @s add BG.MainTarget
