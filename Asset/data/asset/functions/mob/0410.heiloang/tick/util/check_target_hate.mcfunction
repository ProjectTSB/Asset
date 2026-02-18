#> asset:mob/0410.heiloang/tick/util/check_target_hate
#
# 汎用処理 ヘイトターゲット更新
#
# @within asset:mob/0410.heiloang/tick/event/**

# ターゲットがいる場合、スキップ
    execute if entity @a[tag=BE.HateTarget,tag=!PlayerShouldInvulnerable,distance=..80] run return 0

# ターゲット更新
    tag @a[tag=BE.HateTarget] remove BE.HateTarget
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=1] run tag @s add BE.HateTarget
    execute as @a[tag=BE.HateTarget,distance=..160] run tellraw @a[distance=..160] [{"text":"【黒龍は <","color":"white"},{"selector":"@s"},{"text":"> に狙いを定めた！】"}]
