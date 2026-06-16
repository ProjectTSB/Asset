#> asset:mob/0464.drain_plant/tick/move/teleport/
#
#
#
# @within function asset:mob/0464.drain_plant/tick/move/

# ターゲッティング
    tag @r[gamemode=!spectator,distance=..20] add TargetPlayer

# 試行回数
    data modify storage asset:temp RecursiveLimit set value 5

# 最大5回くらいまでテレポートを試みる
    execute at @p[tag=TargetPlayer,distance=..20] align y run function asset:mob/0464.drain_plant/tick/move/teleport/try

# リセット
    tag @p[tag=TargetPlayer,distance=..20] add TargetPlayer
    data remove storage asset:temp RecursiveLimit
    data remove storage asset:temp Success
